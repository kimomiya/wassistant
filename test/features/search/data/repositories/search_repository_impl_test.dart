import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/errors/exceptions.dart';
import 'package:wassistant/core/errors/failures.dart';
import 'package:wassistant/core/network/network_info.dart';
import 'package:wassistant/features/search/data/data_sources/search_remote_data_source.dart';
import 'package:wassistant/features/search/data/models/player_model.dart';
import 'package:wassistant/features/search/data/repositories/search_repository_impl.dart';
import 'package:wassistant/features/search/domain/entities/player.dart';

class MockRemoteDataSource extends Mock implements SearchRemoteDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  MockRemoteDataSource mockRemoteDataSource;
  MockNetworkInfo mockNetworkInfo;
  SearchRepositoryImpl repository;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = SearchRepositoryImpl(
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
                equals(Left<Failure, List<Player>>(const ServerFailure(
                  code: 402,
                  message: 'SEARCH_NOT_SPECIFIED',
                ))),
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
                equals(Left<Failure, List<Player>>(const ServerFailure(
                  code: 0,
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
