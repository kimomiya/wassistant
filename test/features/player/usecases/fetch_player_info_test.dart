import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/errors/failures.dart';
import 'package:wassistant/features/player/domain/entities/player_info.dart';
import 'package:wassistant/features/player/domain/repositories/player_repository.dart';
import 'package:wassistant/features/player/domain/usecaces/fetch_player_info.dart';

class MockPlayerInfoRepository extends Mock implements PlayerRepository {}

void main() {
  FetchPlayerInfo usecase;
  MockPlayerInfoRepository mockPlayerInfoRepository;

  setUp(() {
    mockPlayerInfoRepository = MockPlayerInfoRepository();
    usecase = FetchPlayerInfo(mockPlayerInfoRepository);
  });

  const accountId = 1022009820;
  const playerInfo = PlayerInfo(
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
    'Fetch player info usecase',
    () {
      test(
        'should fetch data from the repository',
        () async {
          when(
            mockPlayerInfoRepository.fetchPlayerInfo(any),
          ).thenAnswer(
            (_) async => Right(playerInfo),
          );

          final result = await usecase(const Parameters(accountId));

          expect(result, Right<Failure, PlayerInfo>(playerInfo));
          verify(mockPlayerInfoRepository.fetchPlayerInfo(accountId));
          verifyNoMoreInteractions(mockPlayerInfoRepository);
        },
      );
    },
  );
}
