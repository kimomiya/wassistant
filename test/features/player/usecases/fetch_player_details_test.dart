import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/errors/failures.dart';
import 'package:wassistant/features/player/domain/entities/player_details.dart';
import 'package:wassistant/features/player/domain/repositories/player_repository.dart';
import 'package:wassistant/features/player/domain/usecaces/fetch_player_details.dart';

class MockPlayerDetailsRepository extends Mock implements PlayerRepository {}

void main() {
  FetchPlayerDetails usecase;
  MockPlayerDetailsRepository mockPlayerDetailsRepository;

  setUp(() {
    mockPlayerDetailsRepository = MockPlayerDetailsRepository();
    usecase = FetchPlayerDetails(mockPlayerDetailsRepository);
  });

  const tAccountId = 1022009820;
  const tPlayerDetails = PlayerDetails(
    accountId: 1022009820,
    createdAt: 1544851122,
    hiddenProfile: false,
    karma: 0,
    lastBattleTime: 1578735940,
    levelingPoints: 3288,
    levelingTier: 15,
    logoutAt: 1578736870,
    nickname: 'Player1',
    statsUpdatedAt: 1578736885,
    updatedAt: 1578736885,
    statistics: null,
  );

  group(
    'fetchPlayerDetails',
    () {
      test(
        'should fetch data from the repository',
        () async {
          when(
            mockPlayerDetailsRepository.fetchPlayerDetails(any),
          ).thenAnswer(
            (_) async => Right(tPlayerDetails),
          );

          final result = await usecase(const Parameters(tAccountId));

          expect(
            result,
            equals(Right<Failure, PlayerDetails>(tPlayerDetails)),
          );
          verify(mockPlayerDetailsRepository.fetchPlayerDetails(tAccountId));
          verifyNoMoreInteractions(mockPlayerDetailsRepository);
        },
      );
    },
  );
}
