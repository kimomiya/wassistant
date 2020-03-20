import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/player_details.dart';

abstract class PlayerRepository {
  Future<Either<Failure, PlayerDetails>> fetchPlayerDetails(int accountId);
}
