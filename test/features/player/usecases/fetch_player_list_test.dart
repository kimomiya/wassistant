import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/errors/failures.dart';
import 'package:wassistant/features/player/domain/entities/player.dart';
import 'package:wassistant/features/player/domain/repositories/player_repository.dart';
import 'package:wassistant/features/player/domain/usecaces/fetch_player_list.dart';

class MockPlayersRepository extends Mock implements PlayerRepository {}

void main() {
  FetchPlayerList usecase;
  MockPlayersRepository mockPlayersRepository;

  setUp(() {
    mockPlayersRepository = MockPlayersRepository();
    usecase = FetchPlayerList(mockPlayersRepository);
  });

  const tSearch = 'horta';
  final tPlayers = <Player>[
    const Player(nickname: 'player1', accountId: 1022009820),
  ];

  group(
    'Fetch player list usecase',
    () {
      test(
        'should fetch data from the repository',
        () async {
          when(
            mockPlayersRepository.fetchPlayerList(any),
          ).thenAnswer(
            (_) async => Right(tPlayers),
          );

          final result = await usecase(const Parameters(tSearch));

          expect(result, Right<Failure, List<Player>>(tPlayers));
          verify(mockPlayersRepository.fetchPlayerList(tSearch));
          verifyNoMoreInteractions(mockPlayersRepository);
        },
      );
    },
  );
}
