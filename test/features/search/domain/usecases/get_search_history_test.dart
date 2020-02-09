import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/errors/failures.dart';
import 'package:wassistant/core/usecases/usecase.dart';
import 'package:wassistant/features/search/domain/repositories/search_repository.dart';
import 'package:wassistant/features/search/domain/usecase/get_search_history.dart';

class MockSearchRepository extends Mock implements SearchRepository {}

void main() {
  GetSearchHistory usecase;
  MockSearchRepository mockSearchRepository;

  setUp(() {
    mockSearchRepository = MockSearchRepository();
    usecase = GetSearchHistory(mockSearchRepository);
  });

  const tSearchHistory = ['test1', 'test2'];

  group(
    'getSearchHistory',
    () {
      test(
        'should get search history from the repository',
        () async {
          when(
            mockSearchRepository.getSearchHistory(),
          ).thenAnswer(
            (_) async => Right(tSearchHistory),
          );

          final result = await usecase(NoParams());

          expect(result, Right<Failure, List<String>>(tSearchHistory));
          verify(mockSearchRepository.getSearchHistory());
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
    },
  );
}
