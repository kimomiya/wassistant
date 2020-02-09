import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/constants/error_code.dart';
import 'package:wassistant/core/errors/exceptions.dart';
import 'package:wassistant/core/errors/failures.dart';
import 'package:wassistant/core/network/network_info.dart';
import 'package:wassistant/features/search/data/data_sources/search_local_data_source.dart';
import 'package:wassistant/features/search/data/data_sources/search_remote_data_source.dart';
import 'package:wassistant/features/search/data/models/player_model.dart';
import 'package:wassistant/features/search/data/repositories/search_repository_impl.dart';
import 'package:wassistant/features/search/domain/entities/player.dart';

class MockRemoteDataSource extends Mock implements SearchRemoteDataSource {}

class MockLocalDataSource extends Mock implements SearchLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  MockRemoteDataSource mockRemoteDataSource;
  MockLocalDataSource mockLocalDataSource;
  MockNetworkInfo mockNetworkInfo;
  SearchRepositoryImpl repository;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = SearchRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  group(
    'searchPlayers',
    () {
      const tSearch = 'horta';

      test(
        'should check if the device is online',
        () {
          when(
            mockNetworkInfo.checkConnection(),
          ).thenAnswer(
            (_) async => null,
          );

          repository.searchPlayers(tSearch);

          verify(mockNetworkInfo.checkConnection());
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
            when(
              mockNetworkInfo.checkConnection(),
            ).thenAnswer(
              (_) async => null,
            );
          });

          test(
            'should return a list of Player '
            'when the call to remote data source is successful',
            () async {
              when(
                mockRemoteDataSource.searchPlayers(any),
              ).thenAnswer(
                (_) async => tPlayerModelList,
              );

              final result = await repository.searchPlayers(tSearch);

              verify(mockRemoteDataSource.searchPlayers(tSearch));
              expect(result, equals(Right<Failure, List<Player>>(tPlayerList)));
            },
          );

          test(
            'should return ServerFailure '
            'when the call to remote data source is failed',
            () async {
              when(
                mockRemoteDataSource.searchPlayers(any),
              ).thenThrow(
                ServerException(code: 402, message: 'SEARCH_NOT_SPECIFIED'),
              );

              final result = await repository.searchPlayers(tSearch);

              verify(mockRemoteDataSource.searchPlayers(tSearch));
              expect(
                result,
                equals(Left<Failure, List<Player>>(
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
              final result = await repository.searchPlayers(tSearch);

              verifyZeroInteractions(mockRemoteDataSource);
              expect(
                result,
                equals(Left<Failure, List<Player>>(
                  const ServerFailure(
                    code: ErrorCode.networkUnreachable,
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

  group(
    'getSearchHistory',
    () {
      test(
        'should return searched keywords '
        'when the call to local data source is successful',
        () async {
          const tSearchHistory = ['test1', 'test2'];

          when(
            mockLocalDataSource.getSearchHistory(),
          ).thenReturn(
            tSearchHistory,
          );

          final result = await repository.getSearchHistory();

          verify(mockLocalDataSource.getSearchHistory());
          expect(result, Right<Failure, List<String>>(tSearchHistory));
        },
      );
    },
  );
}
