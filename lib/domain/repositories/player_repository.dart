import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../entities/player.dart';
import '../entities/player_info.dart';

abstract class PlayerRepository {
  Future<Either<Failure, List<Player>>> fetchPlayerList(String search);

  Future<Either<Failure, PlayerInfo>> fetchPlayerInfo(int accountId);
}
