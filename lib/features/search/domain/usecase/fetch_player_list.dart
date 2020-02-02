import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/player.dart';
import '../repositories/search_repository.dart';

class FetchPlayerList implements UseCase<List<Player>, FetchPlayerListParams> {
  FetchPlayerList(this._repository);

  final SearchRepository _repository;

  @override
  Future<Either<Failure, List<Player>>> call(
    FetchPlayerListParams fetchPlayerListParams,
  ) async {
    return await _repository.fetchPlayerList(
      fetchPlayerListParams.search,
    );
  }
}

class FetchPlayerListParams extends Equatable {
  const FetchPlayerListParams({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [search];
}
