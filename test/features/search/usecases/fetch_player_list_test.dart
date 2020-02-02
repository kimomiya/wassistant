import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/errors/failures.dart';
import 'package:wassistant/features/search/domain/entities/player.dart';
import 'package:wassistant/features/search/domain/repositories/search_repository.dart';
import 'package:wassistant/features/search/domain/usecase/fetch_player_list.dart';

class MockSearchRepository extends Mock implements SearchRepository {}

void main() {
  FetchPlayerList usecase;
  MockSearchRepository mockSearchRepository;

  setUp(() {
    mockSearchRepository = MockSearchRepository();
    usecase = FetchPlayerList(mockSearchRepository);
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
            mockSearchRepository.fetchPlayerList(any),
          ).thenAnswer(
            (_) async => Right(tPlayers),
          );

          final result = await usecase(
            const FetchPlayerListParams(search: tSearch),
          );

          expect(result, Right<Failure, List<Player>>(tPlayers));
          verify(mockSearchRepository.fetchPlayerList(tSearch));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
    },
  );
}
