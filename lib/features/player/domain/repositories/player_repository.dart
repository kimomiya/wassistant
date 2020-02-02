import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/player_info.dart';

abstract class PlayerRepository {
  Future<Either<Failure, PlayerInfo>> fetchPlayerInfo(int accountId);
}
