import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/player.dart';
import '../entities/search_history.dart';

abstract class SearchRepository {
  Future<Either<Failure, SearchHistory>> getSuggestibleHistory(String search);

  Future<Either<Failure, void>> cacheSearchHistory(String search);

  Future<Either<Failure, List<Player>>> searchPlayers(String search);
}
