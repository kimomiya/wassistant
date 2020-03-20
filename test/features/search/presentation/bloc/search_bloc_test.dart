import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/constants/error_message.dart';
import 'package:wassistant/core/constants/status_code.dart';
import 'package:wassistant/core/errors/failures.dart';
import 'package:wassistant/features/search/domain/entities/clan.dart';
import 'package:wassistant/features/search/domain/entities/player.dart';
import 'package:wassistant/features/search/domain/entities/search_history.dart';
import 'package:wassistant/features/search/domain/usecase/get_suggestible_history.dart';
import 'package:wassistant/features/search/domain/usecase/search_clans.dart';
import 'package:wassistant/features/search/domain/usecase/search_players.dart';
import 'package:wassistant/features/search/presentation/bloc/search_bloc.dart';

class MockGetSuggestibleHistory extends Mock implements GetSuggestibleHistory {}

class MockSearchPlayers extends Mock implements SearchPlayers {}

class MockSearchClans extends Mock implements SearchClans {}

void main() {
  SearchBloc bloc;
  MockGetSuggestibleHistory mockGetSuggestibleHistory;
  MockSearchPlayers mockSearchPlayers;
  MockSearchClans mockSearchClans;

  setUp(() {
    mockGetSuggestibleHistory = MockGetSuggestibleHistory();
    mockSearchPlayers = MockSearchPlayers();
    mockSearchClans = MockSearchClans();
    bloc = SearchBloc(
      suggestions: mockGetSuggestibleHistory,
      players: mockSearchPlayers,
      clans: mockSearchClans,
    );
  });

  test(
    'initalState should be SearchInitial',
    () {
      expect(bloc.initialState, equals(const SearchInitial()));
    },
  );

  group(
    'GetSuggestibleHistory',
    () {
      const tSearch = 'horta';
      final tLastExecuteTime = DateTime.now();

      test(
        'should get data from the GetSuggestibleHistory UseCase',
        () async {
          bloc.add(SearchSuggestionsLoaded(
            search: tSearch,
            lastExecuteTime: tLastExecuteTime,
          ));
          await untilCalled(mockGetSuggestibleHistory(any));

          verify(mockGetSuggestibleHistory(
            const GetSuggestibleHistoryParams(search: tSearch),
          ));
        },
      );

      test(
        'should emit [SearchSuggestionsLoadSuccess] '
        'when data is gotten successfully',
        () {
          const tSuggestions = SearchHistory(history: ['test1', 'test2']);

          when(
            mockGetSuggestibleHistory(any),
          ).thenAnswer(
            (_) async => Right(tSuggestions),
          );

          final expectedStates = [
            const SearchInitial(),
            SearchSuggestionsLoadSuccess(
              suggestions: tSuggestions,
              lastExecuteTime: tLastExecuteTime,
            )
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(SearchSuggestionsLoaded(
            search: tSearch,
            lastExecuteTime: tLastExecuteTime,
          ));
        },
      );

      test(
        'should emit [SearchSuggestionsLoadFailure] '
        'when getting ServerFailure',
        () {
          const tServerFailure = ServerFailure(
            code: 1,
            message: 'Something went wrong.',
          );

          when(
            mockGetSuggestibleHistory(any),
          ).thenAnswer(
            (_) async => Left<Failure, SearchHistory>(tServerFailure),
          );

          final expectedStates = [
            const SearchInitial(),
            SearchSuggestionsLoadFailure(
              lastExecuteTime: tLastExecuteTime,
            ),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(SearchSuggestionsLoaded(
            search: tSearch,
            lastExecuteTime: tLastExecuteTime,
          ));
        },
      );
    },
  );

  group(
    'SearchPlayers',
    () {
      const tSearch = 'horta';
      final tLastExecuteTime = DateTime.now();

      test(
        'should get data from the SearchPlayers UseCase',
        () async {
          bloc.add(SearchPlayersFound(
            search: tSearch,
            lastExecuteTime: tLastExecuteTime,
          ));

          await untilCalled(mockSearchPlayers(any));

          verify(mockSearchPlayers(
            const SearchPlayersParams(search: tSearch),
          ));
        },
      );

      test(
        'should emit [SearchPlayersFindInProgress, SearchPlayersFindSuccess] '
        'when data is gotten successfully',
        () {
          const tPlayers = <Player>[
            Player(
              nickname: 'Horta_luo',
              accountId: 2022009820,
            ),
            Player(
              nickname: 'horta_ro0193',
              accountId: 2019754947,
            ),
          ];

          when(
            mockSearchPlayers(any),
          ).thenAnswer(
            (_) async => Right<Failure, List<Player>>(tPlayers),
          );

          final expectedStates = [
            const SearchInitial(),
            const SearchPlayersFindInProgress(),
            SearchPlayersFindSuccess(
              players: tPlayers,
              lastExecuteTime: tLastExecuteTime,
            ),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(SearchPlayersFound(
            search: tSearch,
            lastExecuteTime: tLastExecuteTime,
          ));
        },
      );

      test(
        'should emit [SearchPlayersFindInProgress, SearchPlayersFindFailure] '
        'with a proper message for the error when getting ServerFailure',
        () {
          const tServerFailure = ServerFailure(
            code: StatusCode.fatalError,
            message: 'Something went wrong.',
          );

          when(
            mockSearchPlayers(any),
          ).thenAnswer(
            (_) async => Left<Failure, List<Player>>(tServerFailure),
          );

          final expectedStates = [
            const SearchInitial(),
            const SearchPlayersFindInProgress(),
            SearchPlayersFindFailure(
              message: ErrorMessage.fatalError,
              lastExecuteTime: tLastExecuteTime,
            ),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(SearchPlayersFound(
            search: tSearch,
            lastExecuteTime: tLastExecuteTime,
          ));
        },
      );

      test(
        'should emit [SearchPlayersFindInProgress, SearchPlayersFindFailure] '
        'with a network unreachable message for the error '
        'when getting network error',
        () {
          const tServerFailure = ServerFailure(
            code: StatusCode.networkUnreachable,
            message: 'Something went wrong.',
          );

          when(
            mockSearchPlayers(any),
          ).thenAnswer(
            (_) async => Left<Failure, List<Player>>(tServerFailure),
          );

          final expectedStates = [
            const SearchInitial(),
            const SearchPlayersFindInProgress(),
            SearchPlayersFindFailure(
              message: ErrorMessage.networkUnreachable,
              lastExecuteTime: tLastExecuteTime,
            ),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(SearchPlayersFound(
            search: tSearch,
            lastExecuteTime: tLastExecuteTime,
          ));
        },
      );

      test(
        'should emit [SearchPlayersFindInProgress, SearchPlayersFindFailure] '
        'with a proper message for the error when getting empty data',
        () {
          const tServerFailure = ServerFailure(
            code: StatusCode.noContent,
            message: 'Something went wrong.',
          );

          when(
            mockSearchPlayers(any),
          ).thenAnswer(
            (_) async => Left<Failure, List<Player>>(tServerFailure),
          );

          final expectedStates = [
            const SearchInitial(),
            const SearchPlayersFindInProgress(),
            SearchPlayersFindFailure(
              message: ErrorMessage.noSearchResults,
              lastExecuteTime: tLastExecuteTime,
            ),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(SearchPlayersFound(
            search: tSearch,
            lastExecuteTime: tLastExecuteTime,
          ));
        },
      );
    },
  );

  group(
    'SearchClans',
    () {
      const tSearch = 'note';
      final tLastExecuteTime = DateTime.now();

      test(
        'should get data from the SearchClans UseCase',
        () async {
          bloc.add(SearchClansFound(
            search: tSearch,
            lastExecuteTime: tLastExecuteTime,
          ));

          await untilCalled(mockSearchClans(any));

          verify(mockSearchClans(
            const SearchClansParams(search: tSearch),
          ));
        },
      );

      test(
        'should emit [SearchClansFindInProgress, SearchClansFindSuccess] '
        'when data is gotten successfully',
        () {
          const tClans = <Clan>[
            Clan(
              clanId: 2000018586,
              createdAt: 1554897532,
              membersCount: 4,
              name: 'NOTEmi',
              tag: 'NOTE',
            ),
            Clan(
              clanId: 2000016337,
              createdAt: 1533994576,
              membersCount: 43,
              name: 'Rebirth of Type-Moon&NOTES',
              tag: 'TPM',
            ),
          ];

          when(
            mockSearchClans(any),
          ).thenAnswer(
            (_) async => Right<Failure, List<Clan>>(tClans),
          );

          final expectedStates = [
            const SearchInitial(),
            const SearchClansFindInProgress(),
            SearchClansFindSuccess(
              clans: tClans,
              lastExecuteTime: tLastExecuteTime,
            ),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(SearchClansFound(
            search: tSearch,
            lastExecuteTime: tLastExecuteTime,
          ));
        },
      );

      test(
        'should emit [SearchClansFindInProgress, SearchClansFindFailure] '
        'with a proper message for the error when getting ServerFailure',
        () {
          const tServerFailure = ServerFailure(
            code: StatusCode.fatalError,
            message: 'Something went wrong.',
          );

          when(
            mockSearchClans(any),
          ).thenAnswer(
            (_) async => Left<Failure, List<Clan>>(tServerFailure),
          );

          final expectedStates = [
            const SearchInitial(),
            const SearchClansFindInProgress(),
            SearchClansFindFailure(
              message: ErrorMessage.fatalError,
              lastExecuteTime: tLastExecuteTime,
            ),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(SearchClansFound(
            search: tSearch,
            lastExecuteTime: tLastExecuteTime,
          ));
        },
      );

      test(
        'should emit [SearchClansFindInProgress, SearchClansFindFailure] '
        'with a network unreachable message for the error '
        'when getting network error',
        () {
          const tServerFailure = ServerFailure(
            code: StatusCode.networkUnreachable,
            message: 'Something went wrong.',
          );

          when(
            mockSearchClans(any),
          ).thenAnswer(
            (_) async => Left<Failure, List<Clan>>(tServerFailure),
          );

          final expectedStates = [
            const SearchInitial(),
            const SearchClansFindInProgress(),
            SearchClansFindFailure(
              message: ErrorMessage.networkUnreachable,
              lastExecuteTime: tLastExecuteTime,
            ),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(SearchClansFound(
            search: tSearch,
            lastExecuteTime: tLastExecuteTime,
          ));
        },
      );

      test(
        'should emit [SearchClansFindInProgress, SearchClansFindFailure] '
        'with a proper message for the error when getting empty data',
        () {
          const tServerFailure = ServerFailure(
            code: StatusCode.noContent,
            message: 'Something went wrong.',
          );

          when(
            mockSearchClans(any),
          ).thenAnswer(
            (_) async => Left<Failure, List<Clan>>(tServerFailure),
          );

          final expectedStates = [
            const SearchInitial(),
            const SearchClansFindInProgress(),
            SearchClansFindFailure(
              message: ErrorMessage.noSearchResults,
              lastExecuteTime: tLastExecuteTime,
            ),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(SearchClansFound(
            search: tSearch,
            lastExecuteTime: tLastExecuteTime,
          ));
        },
      );
    },
  );
}
