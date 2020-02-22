import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/player.dart';
import '../repositories/search_repository.dart';

class SearchPlayers implements UseCase<List<Player>, SearchPlayersParams> {
  SearchPlayers(this._repository);

  final SearchRepository _repository;

  @override
  Future<Either<Failure, List<Player>>> call(
    SearchPlayersParams searchPlayersParams,
  ) async {
    return await _repository.searchPlayers(searchPlayersParams.search);
  }
}

class SearchPlayersParams extends Equatable {
  const SearchPlayersParams({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [search];
}
