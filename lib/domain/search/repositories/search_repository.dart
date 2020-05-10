import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import '../entities/clan.dart';
import '../entities/player.dart';
import '../search_failure.dart';

abstract class SearchRepository {
  Future<Either<SearchFailure, KtList<String>>> getSuggestibleHistory(
    String search,
  );

  Future<Either<SearchFailure, KtList<Player>>> searchPlayers(
    String search,
  );

  Future<Either<SearchFailure, KtList<Clan>>> searchClans(
    String search,
  );
}
