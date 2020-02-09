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
  final tPlayers = <Player>[
    const Player(
      nickname: 'player1',
      accountId: 1022009820,
    ),
  ];

  group(
    'searchPlayers',
    () {
      test(
        'should search players from the repository',
        () async {
          when(
            mockSearchRepository.searchPlayers(any),
          ).thenAnswer(
            (_) async => Right(tPlayers),
          );

          final result = await usecase(
            const SearchPlayersParams(search: tSearch),
          );

          expect(result, Right<Failure, List<Player>>(tPlayers));
          verify(mockSearchRepository.searchPlayers(tSearch));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
    },
  );
}
