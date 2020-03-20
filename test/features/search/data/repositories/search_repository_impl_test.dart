import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/constants/status_code.dart';
import 'package:wassistant/core/errors/exceptions.dart';
import 'package:wassistant/core/errors/failures.dart';
import 'package:wassistant/core/network/network_info.dart';
import 'package:wassistant/features/search/data/data_sources/search_local_data_source.dart';
import 'package:wassistant/features/search/data/data_sources/search_remote_data_source.dart';
import 'package:wassistant/features/search/data/models/clan_model.dart';
import 'package:wassistant/features/search/data/models/player_model.dart';
import 'package:wassistant/features/search/data/models/search_history_model.dart';
import 'package:wassistant/features/search/data/repositories/search_repository_impl.dart';
import 'package:wassistant/features/search/domain/entities/clan.dart';
import 'package:wassistant/features/search/domain/entities/player.dart';
import 'package:wassistant/features/search/domain/entities/search_history.dart';

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
    'getSearchHistory',
    () {
      test(
        'should return SearchHistory '
        'when the call to local data source is successful',
        () async {
          const tSearch = 'test';
          const tSearchHistoryModel = SearchHistoryModel(history: ['test1']);

          when(
            mockLocalDataSource.getSearchHistory(),
          ).thenAnswer(
            (_) async => tSearchHistoryModel,
          );

          final result = await repository.getSuggestibleHistory(tSearch);

          verify(mockLocalDataSource.getSearchHistory());

          const expectedHistory = SearchHistory(history: ['test1']);
          expect(
            result,
            equals(Right<Failure, SearchHistory>(expectedHistory)),
          );
        },
      );

      test(
        'should return SearchHistory '
        'without value dose not contains search keyword '
        'when the call to local data source is successful',
        () async {
          const tSearch = 'test1';
          const tSearchHistoryModel = SearchHistoryModel(
            history: [tSearch, 'test2'],
          );

          when(
            mockLocalDataSource.getSearchHistory(),
          ).thenAnswer(
            (_) async => tSearchHistoryModel,
          );

          final result = await repository.getSuggestibleHistory(tSearch);

          verify(mockLocalDataSource.getSearchHistory());
          const expectedHistory = SearchHistory(history: [tSearch]);
          expect(
            result,
            equals(Right<Failure, SearchHistory>(expectedHistory)),
          );
        },
      );

      test(
        'should return SearchHistory '
        'sorted in descending order of the creation time '
        'when the call to local data source is successful',
        () async {
          const tSearch = 'test';
          const tSearchHistoryModel = SearchHistoryModel(
            history: ['test1', 'test2', 'test3', 'search'],
          );

          when(
            mockLocalDataSource.getSearchHistory(),
          ).thenAnswer(
            (_) async => tSearchHistoryModel,
          );

          final result = await repository.getSuggestibleHistory(tSearch);

          verify(mockLocalDataSource.getSearchHistory());
          const expectedHistory = SearchHistory(
            history: ['test3', 'test2', 'test1'],
          );
          expect(
            result,
            equals(Right<Failure, SearchHistory>(expectedHistory)),
          );
        },
      );

      test(
        'should return CacheFailure '
        'when the call to local data source is unsuccessful',
        () async {
          const tSearch = 'test';
          final tException = CacheException(
            code: 0,
            message: 'Something went wrong.',
          );

          when(
            mockLocalDataSource.getSearchHistory(),
          ).thenThrow(
            tException,
          );

          final result = await repository.getSuggestibleHistory(tSearch);

          verify(mockLocalDataSource.getSearchHistory());
          expect(
            result,
            equals(Left<Failure, SearchHistory>(
              CacheFailure(
                code: tException.code,
                message: tException.message,
              ),
            )),
          );
        },
      );
    },
  );

  group(
    'cacheSearchHistory',
    () {
      const tSearchHistoryModel = SearchHistoryModel(
        history: ['test1', 'test2'],
      );

      test(
        'should return void '
        'when the call to local data source is successful',
        () async {
          when(
            mockLocalDataSource.getSearchHistory(),
          ).thenAnswer(
            (_) async => tSearchHistoryModel,
          );

          final result = await repository.cacheSearchHistory('search');

          verify(mockLocalDataSource.getSearchHistory());
          final expectedHistory = [...tSearchHistoryModel.history, 'search'];
          final expectedModel = SearchHistoryModel(history: expectedHistory);
          verify(mockLocalDataSource.cacheSearchHistory(expectedModel));
          expect(result, Right<Failure, void>(null));
        },
      );

      test(
        'should remove duplicate values before cache new data',
        () async {
          when(
            mockLocalDataSource.getSearchHistory(),
          ).thenAnswer(
            (_) async => tSearchHistoryModel,
          );

          final result = await repository.cacheSearchHistory('search');

          verify(mockLocalDataSource.getSearchHistory());
          const expectedModel = SearchHistoryModel(
            history: ['test1', 'test2', 'search'],
          );
          verify(mockLocalDataSource.cacheSearchHistory(expectedModel));
          expect(result, Right<Failure, void>(null));
        },
      );
    },
  );

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
          const tPlayerModels = <PlayerModel>[
            PlayerModel(
              nickname: 'Horta_luo',
              accountId: 2022009820,
            ),
            PlayerModel(
              nickname: 'horta_ro0193',
              accountId: 2019754947,
            ),
          ];
          const List<Player> tPlayers = tPlayerModels;

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
                (_) async => tPlayerModels,
              );

              final result = await repository.searchPlayers(tSearch);

              verify(mockRemoteDataSource.searchPlayers(tSearch));
              expect(
                result,
                equals(Right<Failure, List<Player>>(tPlayers)),
              );
            },
          );

          test(
            'should return ServerFailure '
            'when the call to remote data source is failed',
            () async {
              when(
                mockRemoteDataSource.searchPlayers(any),
              ).thenThrow(
                ServerException(
                  code: 402,
                  message: 'SEARCH_NOT_SPECIFIED',
                ),
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
                code: StatusCode.networkUnreachable,
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

  group(
    'searchClans',
    () {
      const tSearch = 'note';

      test(
        'should check if the device is online',
        () {
          when(
            mockNetworkInfo.checkConnection(),
          ).thenAnswer(
            (_) async => null,
          );

          repository.searchClans(tSearch);

          verify(mockNetworkInfo.checkConnection());
        },
      );

      group(
        'online',
        () {
          const tClanModels = <ClanModel>[
            ClanModel(
              clanId: 2000018586,
              createdAt: 1554897532,
              membersCount: 4,
              name: 'NOTEmi',
              tag: 'NOTE',
            ),
            ClanModel(
              clanId: 2000016337,
              createdAt: 1533994576,
              membersCount: 43,
              name: 'Rebirth of Type-Moon&NOTES',
              tag: 'TPM',
            ),
          ];
          const List<Clan> tClans = tClanModels;

          setUp(() {
            when(
              mockNetworkInfo.checkConnection(),
            ).thenAnswer(
              (_) async => null,
            );
          });

          test(
            'should return a list of Clan '
            'when the call to remote data source is successful',
            () async {
              when(
                mockRemoteDataSource.searchClans(any),
              ).thenAnswer(
                (_) async => tClanModels,
              );

              final result = await repository.searchClans(tSearch);

              verify(mockRemoteDataSource.searchClans(tSearch));
              expect(
                result,
                equals(Right<Failure, List<Clan>>(tClans)),
              );
            },
          );

          test(
            'should return ServerFailure '
            'when the call to remote data source is failed',
            () async {
              when(
                mockRemoteDataSource.searchClans(any),
              ).thenThrow(
                ServerException(
                  code: 402,
                  message: 'SEARCH_NOT_SPECIFIED',
                ),
              );

              final result = await repository.searchClans(tSearch);

              verify(mockRemoteDataSource.searchClans(tSearch));
              expect(
                result,
                equals(Left<Failure, List<Clan>>(
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
              final result = await repository.searchClans(tSearch);

              verifyZeroInteractions(mockRemoteDataSource);
              expect(
                result,
                equals(Left<Failure, List<Clan>>(
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
