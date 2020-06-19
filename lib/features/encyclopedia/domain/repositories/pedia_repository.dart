import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/achievement.dart';
import '../entities/commander_rank.dart';
import '../entities/commander_skill.dart';
import '../entities/commander.dart';
import '../entities/info.dart';
import '../entities/module.dart';
import '../entities/pedia_history.dart';
import '../entities/ship_param.dart';
import '../entities/ship.dart';

abstract class PediaRepository {
  Future<Either<Failure, SearchPediaHistory>> getSuggestiblePediaHistory(
      String search);

  Future<Either<Failure, void>> cachePediaHistory(String search);

  Future<Either<Failure, List<PediaAchievement>>> searchAchievements(
      String search);

  Future<Either<Failure, List<PediaCommander>>> searchCommanders(String search);

  Future<Either<Failure, List<PediaCommanderRank>>> searchCommanderRanks(
      String search);

  Future<Either<Failure, List<PediaCommanderSkill>>> searchCommanderSkills(
      String search);

  Future<Either<Failure, List<PediaInfo>>> searchInfo(String search);

  Future<Either<Failure, List<PediaModule>>> searchModules(String search);

  Future<Either<Failure, List<PediaShip>>> searchShips(String search);

  Future<Either<Failure, List<PediaShipParam>>> searchShipParams(String search);
}
