import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/errors/failures.dart';
import 'package:wassistant/features/search/domain/entities/search_history.dart';
import 'package:wassistant/features/search/domain/usecase/get_suggestible_history.dart';
import 'package:wassistant/features/search/domain/usecase/search_players.dart';
import 'package:wassistant/features/search/presentation/bloc/search_bloc.dart';

class MockGetSuggestibleHistory extends Mock implements GetSuggestibleHistory {}

class MockSearchPlayer extends Mock implements SearchPlayers {}

void main() {
  SearchBloc bloc;
  MockGetSuggestibleHistory mockGetSuggestibleHistory;
  MockSearchPlayer mockSearchPlayer;

  setUp(() {
    mockGetSuggestibleHistory = MockGetSuggestibleHistory();
    mockSearchPlayer = MockSearchPlayer();
    bloc = SearchBloc(
      suggestions: mockGetSuggestibleHistory,
      players: mockSearchPlayer,
    );
  });

  test(
    'initalState should be Empty',
    () {
      expect(bloc.initialState, equals(Empty()));
    },
  );

  group(
    'GetSuggestibleHistory',
    () {
      const tSearch = 'test1';
      const tSearchHistory = SearchHistory(history: ['test1', 'test2']);

      test(
        'should get data from the GetSuggestibleHistory usecase',
        () async {
          when(
            mockGetSuggestibleHistory(any),
          ).thenAnswer(
            (_) async => Right(tSearchHistory),
          );

          bloc.add(const GetSuggestions(search: tSearch));
          await untilCalled(mockGetSuggestibleHistory(any));

          const params = GetSuggestibleHistoryParams(search: tSearch);
          verify(mockGetSuggestibleHistory(params));
        },
      );

      test(
        'should emit [FoundHistory] with an empty data '
        'when getting data fails',
        () {
          when(
            mockGetSuggestibleHistory(any),
          ).thenAnswer(
            (_) async => Left(
              const ServerFailure(
                code: 0,
                message: 'Something went wrong.',
              ),
            ),
          );

          final expectedEmits = [
            Empty(),
            const FoundHistory(history: []),
          ];
          expectLater(bloc, emitsInOrder(expectedEmits));

          bloc.add(const GetSuggestions(search: tSearch));
        },
      );
    },
  );
}
