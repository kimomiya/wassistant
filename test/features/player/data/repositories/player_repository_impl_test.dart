import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/constants/status_code.dart';
import 'package:wassistant/core/errors/exceptions.dart';
import 'package:wassistant/core/errors/failures.dart';
import 'package:wassistant/core/network/network_info.dart';
import 'package:wassistant/features/player/data/data_sources/player_remote_data_source.dart';
import 'package:wassistant/features/player/data/models/player_details_model.dart';
import 'package:wassistant/features/player/data/repositories/palyer_repository_impl.dart';
import 'package:wassistant/features/player/domain/entities/player_details.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockRemoteDataSource extends Mock implements PlayerRemoteDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  MockRemoteDataSource mockRemoteDataSource;
  MockNetworkInfo mockNetworkInfo;
  PlayerRepositoryImpl repository;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = PlayerRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  group(
    'fetchPlayerDetails',
    () {
      const tAccountId = 2022009820;

      test(
        'should check if the device is online',
        () {
          when(
            mockNetworkInfo.checkConnection(),
          ).thenAnswer(
            (_) async => null,
          );

          repository.fetchPlayerDetails(tAccountId);

          verify(mockNetworkInfo.checkConnection());
        },
      );

      group(
        'online',
        () {
          final tResponse = jsonDecode(
            fixture('player_details_response'),
          ) as Map<String, dynamic>;
          final tPlayerDetailsModel = PlayerDetailsModel.fromJson(
            tResponse['data'][tAccountId.toString()] as Map<String, dynamic>,
          );
          final PlayerDetails tPlayerDetails = tPlayerDetailsModel;

          setUp(() {
            when(
              mockNetworkInfo.checkConnection(),
            ).thenAnswer(
              (_) async => null,
            );
          });

          test(
            'should return PlayerDetails '
            'when the call to remote data source is successful',
            () async {
              when(
                mockRemoteDataSource.fetchPlayerDetails(any),
              ).thenAnswer(
                (_) async => tPlayerDetailsModel,
              );

              final result = await repository.fetchPlayerDetails(tAccountId);

              verify(mockRemoteDataSource.fetchPlayerDetails(tAccountId));
              expect(
                result,
                equals(Right<Failure, PlayerDetails>(tPlayerDetails)),
              );
            },
          );

          test(
            'should return ServerFailure '
            'when the call to remote data source is failed',
            () async {
              when(
                mockRemoteDataSource.fetchPlayerDetails(any),
              ).thenThrow(
                ServerException(code: 402, message: 'SEARCH_NOT_SPECIFIED'),
              );

              final result = await repository.fetchPlayerDetails(tAccountId);

              verify(mockRemoteDataSource.fetchPlayerDetails(tAccountId));
              expect(
                result,
                equals(Left<Failure, List<PlayerDetails>>(
                  const ServerFailure(
                    code: 402,
                    message: 'SEARCH_NOT_SPECIFIED',
                  ),
                )),
              );
            },
          );
        },
      );

      group(
        'offline',
        () {
          setUp(() {
            when(
              mockNetworkInfo.checkConnection(),
            ).thenThrow(
              ServerException(
                code: StatusCode.networkUnreachable,
                message: 'Network is unreachable.',
              ),
            );
          });

          test(
            'should return ServerFailure '
            'without the call to remote data source',
            () async {
              final result = await repository.fetchPlayerDetails(tAccountId);

              verifyZeroInteractions(mockRemoteDataSource);
              expect(
                result,
                equals(Left<Failure, PlayerDetails>(
                  const ServerFailure(
                    code: StatusCode.networkUnreachable,
                    message: 'Network is unreachable.',
                  ),
                )),
              );
            },
          );
        },
      );
    },
  );
}
