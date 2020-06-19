import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/pedia_repository.dart';

class CachePediaHistory
    implements UseCase<void, CacheSearchPediaHistoryParams> {
  CachePediaHistory(this._repository);

  final PediaRepository _repository;

  @override
  Future<Either<Failure, void>> call(
      CacheSearchPediaHistoryParams params) async {
    return _repository.cachePediaHistory(params.search);
  }
}

class CacheSearchPediaHistoryParams extends Equatable {
  const CacheSearchPediaHistoryParams({@required this.search});

  final String search;

  @override
  List<Object> get props => [search];
}
