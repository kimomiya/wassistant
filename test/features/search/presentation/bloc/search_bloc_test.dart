import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/constants/error_message.dart';
import 'package:wassistant/core/constants/status_code.dart';
import 'package:wassistant/core/errors/failures.dart';
import 'package:wassistant/features/search/domain/entities/clan.dart';
import 'package:wassistant/features/search/domain/entities/player.dart';
import 'package:wassistant/features/search/domain/entities/search_history.dart';
import 'package:wassistant/features/search/domain/usecase/cache_search_history.dart';
import 'package:wassistant/features/search/domain/usecase/get_suggestible_history.dart';
import 'package:wassistant/features/search/domain/usecase/search_clans.dart';
import 'package:wassistant/features/search/domain/usecase/search_players.dart';
import 'package:wassistant/features/search/presentation/bloc/search_bloc.dart';

class MockGetSuggestibleHistory extends Mock implements GetSuggestibleHistory {}

class MockCacheSearchHistory extends Mock implements CacheSearchHistory {}

class MockSearchPlayers extends Mock implements SearchPlayers {}

class MockSearchClans extends Mock implements SearchClans {}

void main() {
  SearchBloc bloc;
  MockGetSuggestibleHistory mockGetSuggestibleHistory;
  MockCacheSearchHistory mockCacheSearchHistory;
  MockSearchPlayers mockSearchPlayers;
  MockSearchClans mockSearchClans;

  setUp(() {
    mockGetSuggestibleHistory = MockGetSuggestibleHistory();
    mockCacheSearchHistory = MockCacheSearchHistory();
    mockSearchPlayers = MockSearchPlayers();
    mockSearchClans = MockSearchClans();
    bloc = SearchBloc(
      suggestions: mockGetSuggestibleHistory,
      history: mockCacheSearchHistory,
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

      test(
        'should get data from the GetSuggestibleHistory UseCase',
        () async {
          bloc.add(const SearchSuggestionsLoaded(search: tSearch));
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

          const expectedStates = [
            SearchInitial(),
            SearchSuggestionsLoadSuccess(suggestions: tSuggestions)
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(const SearchSuggestionsLoaded(search: tSearch));
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

          const expectedStates = [
            SearchInitial(),
            SearchSuggestionsLoadFailure(),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(const SearchSuggestionsLoaded(search: tSearch));
        },
      );
    },
  );

  group(
    'SearchPlayers',
    () {
      const tSearch = 'horta';

      test(
        'should get data from the SearchPlayers UseCase',
        () async {
          bloc.add(const SearchPlayersFound(search: tSearch));

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

          const expectedStates = [
            SearchInitial(),
            SearchPlayersFindInProgress(),
            SearchPlayersFindSuccess(players: tPlayers),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(const SearchPlayersFound(search: tSearch));
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

          const expectedStates = [
            SearchInitial(),
            SearchPlayersFindInProgress(),
            SearchPlayersFindFailure(message: ErrorMessage.fatalError),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(const SearchPlayersFound(search: tSearch));
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

          const expectedStates = [
            SearchInitial(),
            SearchPlayersFindInProgress(),
            SearchPlayersFindFailure(message: ErrorMessage.networkUnreachable),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(const SearchPlayersFound(search: tSearch));
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

          const expectedStates = [
            SearchInitial(),
            SearchPlayersFindInProgress(),
            SearchPlayersFindFailure(message: ErrorMessage.noSearchResults),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(const SearchPlayersFound(search: tSearch));
        },
      );

      test(
        'should emit [SearchPlayersFindInProgress, SearchPlayersFindFailure] '
        'with a proper message for the error when getting invalid search error',
        () {
          const tServerFailure = ServerFailure(
            code: StatusCode.invalidSearch,
            message: 'Something went wrong.',
          );

          when(
            mockSearchPlayers(any),
          ).thenAnswer(
            (_) async => Left<Failure, List<Player>>(tServerFailure),
          );

          const expectedStates = [
            SearchInitial(),
            SearchPlayersFindInProgress(),
            SearchPlayersFindFailure(message: ErrorMessage.invalidSearch),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(const SearchPlayersFound(search: tSearch));
        },
      );
    },
  );

  group(
    'SearchClans',
    () {
      const tSearch = 'note';

      test(
        'should get data from the SearchClans UseCase',
        () async {
          bloc.add(const SearchClansFound(search: tSearch));

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

          const expectedStates = [
            SearchInitial(),
            SearchClansFindInProgress(),
            SearchClansFindSuccess(clans: tClans),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(const SearchClansFound(search: tSearch));
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

          const expectedStates = [
            SearchInitial(),
            SearchClansFindInProgress(),
            SearchClansFindFailure(message: ErrorMessage.fatalError),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(const SearchClansFound(search: tSearch));
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

          const expectedStates = [
            SearchInitial(),
            SearchClansFindInProgress(),
            SearchClansFindFailure(message: ErrorMessage.networkUnreachable),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(const SearchClansFound(search: tSearch));
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

          const expectedStates = [
            SearchInitial(),
            SearchClansFindInProgress(),
            SearchClansFindFailure(message: ErrorMessage.noSearchResults),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(const SearchClansFound(search: tSearch));
        },
      );

      test(
        'should emit [SearchClansFindInProgress, SearchClansFindFailure] '
        'with a proper message for the error when getting invalid search error',
        () {
          const tServerFailure = ServerFailure(
            code: StatusCode.invalidSearch,
            message: 'Something went wrong.',
          );

          when(
            mockSearchClans(any),
          ).thenAnswer(
            (_) async => Left<Failure, List<Clan>>(tServerFailure),
          );

          const expectedStates = [
            SearchInitial(),
            SearchClansFindInProgress(),
            SearchClansFindFailure(message: ErrorMessage.invalidSearch),
          ];
          expectLater(bloc, emitsInOrder(expectedStates));

          bloc.add(const SearchClansFound(search: tSearch));
        },
      );
    },
  );
}
