import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/constants/error_code.dart';
import 'package:wassistant/core/errors/exceptions.dart';
import 'package:wassistant/core/errors/failures.dart';
import 'package:wassistant/core/network/network_info.dart';
import 'package:wassistant/features/player/data/data_sources/player_remote_data_source.dart';
import 'package:wassistant/features/player/data/models/player_info_model.dart';
import 'package:wassistant/features/player/data/repositories/palyer_repository_impl.dart';
import 'package:wassistant/features/player/domain/entities/player_info.dart';

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
    'Fetch player info repository',
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

          repository.fetchPlayerInfo(tAccountId);

          verify(mockNetworkInfo.checkConnection());
        },
      );

      group(
        'online',
        () {
          final tResponse = jsonDecode(
            fixture('player_info_response'),
          ) as Map<String, dynamic>;
          final tPlayerInfoModel = PlayerInfoModel.fromJson(
            tResponse['data'][tAccountId.toString()] as Map<String, dynamic>,
          );
          final PlayerInfo tPlayerInfo = tPlayerInfoModel;

          setUp(() {
            when(
              mockNetworkInfo.checkConnection(),
            ).thenAnswer(
              (_) async => null,
            );
          });

          test(
            'should return PlayerInfo '
            'when the call to remote data source is successful',
            () async {
              when(
                mockRemoteDataSource.fetchPlayerInfo(any),
              ).thenAnswer(
                (_) async => tPlayerInfoModel,
              );

              final result = await repository.fetchPlayerInfo(tAccountId);

              verify(mockRemoteDataSource.fetchPlayerInfo(tAccountId));
              expect(result, equals(Right<Failure, PlayerInfo>(tPlayerInfo)));
            },
          );

          test(
            'should return ServerFailure '
            'when the call to remote data source is failed',
            () async {
              when(
                mockRemoteDataSource.fetchPlayerInfo(any),
              ).thenThrow(
                ServerException(code: 402, message: 'SEARCH_NOT_SPECIFIED'),
              );

              final result = await repository.fetchPlayerInfo(tAccountId);

              verify(mockRemoteDataSource.fetchPlayerInfo(tAccountId));
              expect(
                result,
                equals(Left<Failure, List<PlayerInfo>>(
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
                code: ErrorCode.networkUnreachable,
                message: 'Network is unreachable.',
              ),
            );
          });

          test(
            'should return ServerFailure '
            'without the call to remote data source',
            () async {
              final result = await repository.fetchPlayerInfo(tAccountId);

              verifyZeroInteractions(mockRemoteDataSource);
              expect(
                result,
                equals(Left<Failure, PlayerInfo>(const ServerFailure(
                  code: ErrorCode.networkUnreachable,
                  message: 'Network is unreachable.',
                ))),
              );
            },
          );
        },
      );
    },
  );
}
