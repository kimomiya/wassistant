import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/errors/exceptions.dart';
import 'package:wassistant/core/errors/failures.dart';
import 'package:wassistant/core/network/network_info.dart';
import 'package:wassistant/features/player/data/data_sources/player_remote_data_source.dart';
import 'package:wassistant/features/player/data/models/player_info_model.dart';
import 'package:wassistant/features/player/data/models/player_model.dart';
import 'package:wassistant/features/player/data/repositories/palyer_repository_impl.dart';
import 'package:wassistant/features/player/domain/entities/player.dart';
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
    'Fetch player list repository',
    () {
      const tSearch = 'horta';

      test(
        'should check if the device is online',
        () {
          when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);

          repository.fetchPlayerList(tSearch);

          verify(mockNetworkInfo.isConnected);
        },
      );

      group(
        'online',
        () {
          const tPlayerModelList = <PlayerModel>[
            PlayerModel(
              nickname: 'Horta_luo',
              accountId: 2022009820,
            ),
            PlayerModel(
              nickname: 'horta_ro0193',
              accountId: 2019754947,
            ),
          ];
          const List<Player> tPlayerList = tPlayerModelList;

          setUp(() {
            when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
          });

          test(
            'should return a list of Player '
            'when the call to remote data source is successful',
            () async {
              when(
                mockRemoteDataSource.fetchPlayerList(any),
              ).thenAnswer(
                (_) async => tPlayerModelList,
              );

              final result = await repository.fetchPlayerList(tSearch);

              verify(mockRemoteDataSource.fetchPlayerList(tSearch));
              expect(result, equals(Right<Failure, List<Player>>(tPlayerList)));
            },
          );

          test(
            'should return ServerFailure '
            'when the call to remote data source is failed',
            () async {
              when(
                mockRemoteDataSource.fetchPlayerList(any),
              ).thenThrow(
                ServerException(code: 402, message: 'SEARCH_NOT_SPECIFIED'),
              );

              final result = await repository.fetchPlayerList(tSearch);

              verify(mockRemoteDataSource.fetchPlayerList(tSearch));
              expect(
                result,
                equals(Left<Failure, List<Player>>(const ServerFailure())),
              );
            },
          );
        },
      );

      group(
        'offline',
        () {
          setUp(() {
            when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
          });

          test(
            'should return ServerFailure '
            'without the call to remote data source',
            () async {
              final result = await repository.fetchPlayerList(tSearch);

              verifyZeroInteractions(mockRemoteDataSource);
              expect(
                result,
                equals(Left<Failure, List<Player>>(const ServerFailure())),
              );
            },
          );
        },
      );
    },
  );

  group(
    'Fetch player info repository',
    () {
      const tAccountId = 2022009820;

      test(
        'should check if the device is online',
        () {
          when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);

          repository.fetchPlayerInfo(tAccountId);

          verify(mockNetworkInfo.isConnected);
        },
      );

      group(
        'online',
        () {
          final tResponse =
              jsonDecode(fixture('player_info.json')) as Map<String, dynamic>;
          final tPlayerInfoModel = PlayerInfoModel.fromJson(
            tResponse['data'][tAccountId.toString()] as Map<String, dynamic>,
          );
          final PlayerInfo tPlayerInfo = tPlayerInfoModel;

          setUp(() {
            when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
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
                equals(Left<Failure, List<Player>>(const ServerFailure())),
              );
            },
          );
        },
      );

      group(
        'offline',
        () {
          setUp(() {
            when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
          });

          test(
            'should return ServerFailure '
            'without the call to remote data source',
            () async {
              final result = await repository.fetchPlayerInfo(tAccountId);

              verifyZeroInteractions(mockRemoteDataSource);
              expect(
                result,
                equals(Left<Failure, PlayerInfo>(const ServerFailure())),
              );
            },
          );
        },
      );
    },
  );
}
