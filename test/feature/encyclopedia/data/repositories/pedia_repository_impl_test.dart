import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/constants/error_message.dart';
import 'package:wassistant/core/constants/status_code.dart';
import 'package:wassistant/core/env/env.dart';
import 'package:wassistant/core/errors/exceptions.dart';
import 'package:wassistant/core/errors/failures.dart';
import 'package:wassistant/core/network/network_info.dart';
import 'package:wassistant/features/encyclopedia/data/data_sources/pedia_local_data_source.dart';
import 'package:wassistant/features/encyclopedia/data/data_sources/pedia_remote_data_source.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_ship_model.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_history_model.dart';
import 'package:wassistant/features/encyclopedia/data/repositories/pedia_repository_impl.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/pedia_history.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/ship.dart';

class MockEnv extends Mock implements Env {}

class MockGetIt extends Mock implements GetIt {}

class MockRemoteDataSource extends Mock implements PediaRemoteDataSource {}

class MockLocalDataSource extends Mock implements PediaLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  PediaRepositoryImpl repository;
  MockEnv mockEnv;
  MockGetIt mockLocator;
  MockRemoteDataSource mockRemoteDataSource;
  MockLocalDataSource mockLocalDataSource;
  MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockEnv = MockEnv();
    mockLocator = MockGetIt();
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = PediaRepositoryImpl(
      locator: mockLocator,
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  group(
    'getSearchPediaHistory',
    () {
      test(
        'should return SearchPediaHistory '
        'when the call to local data source is successful',
        () async {
          const tSearch = 'test';
          const tPediaHistoryModel = PediaHistoryModel(history: ['test1']);

          when(
            mockLocalDataSource.getPediaHistory(),
          ).thenAnswer(
            (_) async => tPediaHistoryModel,
          );

          final result = await repository.getSuggestiblePediaHistory(tSearch);

          verify(mockLocalDataSource.getPediaHistory());

          const expectedHistory = SearchPediaHistory(history: ['test1']);
          expect(
            result,
            equals(Right<Failure, SearchPediaHistory>(expectedHistory)),
          );
        },
      );

      test(
        'should return SearchPediaHistory '
        'without value dose not contains search keyword '
        'when the call to local data source is successful',
        () async {
          const tSearch = 'test1';
          const tPediaHistoryModel = PediaHistoryModel(
            history: [tSearch, 'test2'],
          );

          when(
            mockLocalDataSource.getPediaHistory(),
          ).thenAnswer(
            (_) async => tPediaHistoryModel,
          );

          final result = await repository.getSuggestiblePediaHistory(tSearch);

          verify(mockLocalDataSource.getPediaHistory());
          const expectedHistory = SearchPediaHistory(history: [tSearch]);
          expect(
            result,
            equals(Right<Failure, SearchPediaHistory>(expectedHistory)),
          );
        },
      );

      test(
        'should return SearchPediaHistory '
        'sorted in descending order of the creation time '
        'when the call to local data source is successful',
        () async {
          const tSearch = 'test';
          const tPediaHistoryModel = PediaHistoryModel(
            history: ['test1', 'test2', 'test3', 'search'],
          );

          when(
            mockLocalDataSource.getPediaHistory(),
          ).thenAnswer(
            (_) async => tPediaHistoryModel,
          );

          final result = await repository.getSuggestiblePediaHistory(tSearch);

          verify(mockLocalDataSource.getPediaHistory());
          const expectedHistory = SearchPediaHistory(
            history: ['test3', 'test2', 'test1'],
          );
          expect(
            result,
            equals(Right<Failure, SearchPediaHistory>(expectedHistory)),
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
            mockLocalDataSource.getPediaHistory(),
          ).thenThrow(
            tException,
          );

          final result = await repository.getSuggestiblePediaHistory(tSearch);

          verify(mockLocalDataSource.getPediaHistory());
          expect(
            result,
            equals(Left<Failure, SearchPediaHistory>(
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
    'cachePediaHistory',
    () {
      void setUpMockLocalDataSourceSuccess(List<String> tHistory) {
        when(mockEnv.searchHistoryStorageLimit).thenReturn(999);
        when(mockLocator<Env>()).thenReturn(mockEnv);
        when(
          mockLocalDataSource.getPediaHistory(),
        ).thenAnswer(
          (_) async => PediaHistoryModel(history: tHistory),
        );
      }

      test(
        'should return void '
        'when the call to local data source is successful',
        () async {
          const tHistory = ['test1', 'test2'];
          setUpMockLocalDataSourceSuccess(tHistory);

          final result = await repository.cachePediaHistory('search');

          verify(mockLocalDataSource.getPediaHistory());
          final expectedHistory = [...tHistory, 'search'];
          final expectedModel = PediaHistoryModel(history: expectedHistory);
          verify(mockLocalDataSource.cachePediaHistory(expectedModel));
          expect(result, Right<Failure, void>(null));
        },
      );

      test(
        'should remove duplicate values before cache new data',
        () async {
          const tSearch = 'search';
          const tHistory = ['test1', tSearch, 'test2'];
          setUpMockLocalDataSourceSuccess(tHistory);

          final result = await repository.cachePediaHistory(tSearch);

          verify(mockLocalDataSource.getPediaHistory());
          const expectedModel = PediaHistoryModel(
            history: ['test1', 'test2', tSearch],
          );
          verify(mockLocalDataSource.cachePediaHistory(expectedModel));
          expect(result, Right<Failure, void>(null));
        },
      );

      test(
        'should remove the oldest data if cached history is over the limit',
        () async {
          const tHistory = ['test1', 'test2', 'test3'];
          when(
            mockEnv.searchHistoryStorageLimit,
          ).thenReturn(
            tHistory.length - 1,
          );
          when(mockLocator<Env>()).thenReturn(mockEnv);
          when(
            mockLocalDataSource.getPediaHistory(),
          ).thenAnswer(
            (_) async => const PediaHistoryModel(history: tHistory),
          );

          final result = await repository.cachePediaHistory('search');

          verify(mockLocalDataSource.getPediaHistory());
          const expectedModel = PediaHistoryModel(
            history: ['test2', 'test3', 'search'],
          );
          verify(mockLocalDataSource.cachePediaHistory(expectedModel));
          expect(result, Right<Failure, void>(null));
        },
      );
    },
  );

  // group(
  //   'searchShips',
  //   () {
  //     const tSearch = 'Fuso';

  //     test(
  //       'should check if the device is online',
  //       () {
  //         when(
  //           mockNetworkInfo.checkConnection(),
  //         ).thenAnswer(
  //           (_) async => null,
  //         );

  //         repository.searchShips(tSearch);

  //         verify(mockNetworkInfo.checkConnection());
  //       },
  //     );

  //     group(
  //       'online',
  //       () {
  //         const tPediaShipsModels = <PediaShipModel>[
  //           PediaShipModel(
  //             nickname: 'Horta_luo',
  //             accountId: 2022009820,
  //           ),
  //           PediaShipModel(
  //             nickname: 'horta_ro0193',
  //             accountId: 2019754947,
  //           ),
  //         ];
  //         const List<PediaShip> tPlayers = tPediaShipsModels;

  //         setUp(() {
  //           when(
  //             mockNetworkInfo.checkConnection(),
  //           ).thenAnswer(
  //             (_) async => null,
  //           );
  //         });

  //         test(
  //           'should return a list of Player '
  //           'when the call to remote data source is successful',
  //           () async {
  //             when(
  //               mockRemoteDataSource.searchShips(any),
  //             ).thenAnswer(
  //               (_) async => tPediaShipsModels,
  //             );

  //             final result = await repository.searchPlayers(tSearch);

  //             verify(mockRemoteDataSource.searchPlayers(tSearch));
  //             expect(
  //               result,
  //               equals(Right<Failure, List<Player>>(tPlayers)),
  //             );
  //           },
  //         );

  //         test(
  //           'should return ServerFailure '
  //           'when the call to remote data source is failed',
  //           () async {
  //             when(
  //               mockRemoteDataSource.searchPlayers(any),
  //             ).thenThrow(
  //               ServerException(
  //                 code: 402,
  //                 message: 'SEARCH_NOT_SPECIFIED',
  //               ),
  //             );

  //             final result = await repository.searchPlayers(tSearch);

  //             verify(mockRemoteDataSource.searchPlayers(tSearch));
  //             expect(
  //               result,
  //               equals(Left<Failure, List<Player>>(
  //                 const ServerFailure(
  //                   code: 402,
  //                   message: 'SEARCH_NOT_SPECIFIED',
  //                 ),
  //               )),
  //             );
  //           },
  //         );

  //         test(
  //           'should return ServerFailure '
  //           'when the call to remote data source returning empty data',
  //           () async {
  //             when(
  //               mockRemoteDataSource.searchPlayers(any),
  //             ).thenAnswer(
  //               (_) async => null,
  //             );

  //             final result = await repository.searchPlayers(tSearch);

  //             verify(mockRemoteDataSource.searchPlayers(tSearch));
  //             expect(
  //               result,
  //               equals(Left<Failure, List<Player>>(
  //                 const ServerFailure(
  //                   code: StatusCode.noContent,
  //                   message: ErrorMessage.noSearchResults,
  //                 ),
  //               )),
  //             );
  //           },
  //         );
  //       },
  //     );

  //     group(
  //       'offline',
  //       () {
  //         setUp(() {
  //           when(
  //             mockNetworkInfo.checkConnection(),
  //           ).thenThrow(
  //             ServerException(
  //               code: StatusCode.networkUnreachable,
  //               message: 'Network is unreachable.',
  //             ),
  //           );
  //         });

  //         test(
  //           'should return ServerFailure '
  //           'without the call to remote data source',
  //           () async {
  //             final result = await repository.searchPlayers(tSearch);

  //             verifyZeroInteractions(mockRemoteDataSource);
  //             expect(
  //               result,
  //               equals(Left<Failure, List<Player>>(
  //                 const ServerFailure(
  //                   code: StatusCode.networkUnreachable,
  //                   message: 'Network is unreachable.',
  //                 ),
  //               )),
  //             );
  //           },
  //         );
  //       },
  //     );
  //   },
  // );
}
