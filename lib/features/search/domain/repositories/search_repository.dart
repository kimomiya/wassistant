import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/player.dart';

abstract class SearchRepository {
  Future<Either<Failure, List<String>>> getSearchHistory();

  Future<Either<Failure, List<Player>>> searchPlayers(String search);
}
