import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/errors/failures.dart';
import 'package:wassistant/features/search/domain/entities/player.dart';
import 'package:wassistant/features/search/domain/repositories/search_repository.dart';
import 'package:wassistant/features/search/domain/usecase/search_players.dart';

class MockSearchRepository extends Mock implements SearchRepository {}

void main() {
  SearchPlayers usecase;
  MockSearchRepository mockSearchRepository;

  setUp(() {
    mockSearchRepository = MockSearchRepository();
    usecase = SearchPlayers(mockSearchRepository);
  });

  const tSearch = 'horta';
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

  group(
    'searchPlayers',
    () {
      test(
        'should get a list of Player entity from the repository',
        () async {
          when(
            mockSearchRepository.searchPlayers(any),
          ).thenAnswer(
            (_) async => Right(tPlayers),
          );

          final result = await usecase(
            const SearchPlayersParams(search: tSearch),
          );

          expect(
            result,
            equals(Right<Failure, List<Player>>(tPlayers)),
          );
          verify(mockSearchRepository.searchPlayers(tSearch));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
    },
  );
}
