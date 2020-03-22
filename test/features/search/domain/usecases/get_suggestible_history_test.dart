import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/errors/failures.dart';
import 'package:wassistant/features/search/domain/entities/search_history.dart';
import 'package:wassistant/features/search/domain/repositories/search_repository.dart';
import 'package:wassistant/features/search/domain/usecase/get_suggestible_history.dart';

class MockSearchRepository extends Mock implements SearchRepository {}

void main() {
  GetSuggestibleHistory usecase;
  MockSearchRepository mockSearchRepository;

  setUp(() {
    mockSearchRepository = MockSearchRepository();
    usecase = GetSuggestibleHistory(mockSearchRepository);
  });

  const tSearchHistory = SearchHistory(history: ['test1', 'test2']);

  group(
    'GetSuggestibleHistory',
    () {
      test(
        'should get search history from the repository',
        () async {
          when(
            mockSearchRepository.getSuggestibleHistory(any),
          ).thenAnswer(
            (_) async => Right(tSearchHistory),
          );

          const params = GetSuggestibleHistoryParams(search: 'test1');
          final result = await usecase(params);

          expect(
            result,
            equals(Right<Failure, SearchHistory>(tSearchHistory)),
          );
          verify(mockSearchRepository.getSuggestibleHistory(params.search));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
    },
  );
}
