import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/errors/failures.dart';
import 'package:wassistant/core/usecases/usecase.dart';
import 'package:wassistant/features/search/domain/usecase/get_search_history.dart';
import 'package:wassistant/features/search/domain/usecase/search_players.dart';
import 'package:wassistant/features/search/presentation/bloc/search_bloc.dart';

class MockGetSearchHistory extends Mock implements GetSearchHistory {}

class MockSearchPlayer extends Mock implements SearchPlayers {}

void main() {
  SearchBloc bloc;
  MockGetSearchHistory mockGetSearchHistory;
  MockSearchPlayer mockSearchPlayer;

  setUp(() {
    mockGetSearchHistory = MockGetSearchHistory();
    mockSearchPlayer = MockSearchPlayer();
    bloc = SearchBloc(
      history: mockGetSearchHistory,
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
    'GetSearchHistory',
    () {
      final tSearchHistory = ['test1', 'test2'];

      test(
        'should get data from the GetSearchHistory usecase',
        () async {
          when(
            mockGetSearchHistory(any),
          ).thenAnswer(
            (_) async => Right(tSearchHistory),
          );

          bloc.add(const GetHistory());
          await untilCalled(mockGetSearchHistory(any));

          verify(mockGetSearchHistory(NoParams()));
        },
      );

      test(
        'should emit [FoundHistory] with an empty data '
        'when getting data fails',
        () {
          when(
            mockGetSearchHistory(any),
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

          bloc.add(const GetHistory());
        },
      );
    },
  );
}
