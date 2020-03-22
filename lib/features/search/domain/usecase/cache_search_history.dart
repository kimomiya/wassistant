import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/search_repository.dart';

class CacheSearchHistory implements UseCase<void, CacheSearchHistoryParams> {
  CacheSearchHistory(this._repository);

  final SearchRepository _repository;

  @override
  Future<Either<Failure, void>> call(CacheSearchHistoryParams params) async {
    return _repository.cacheSearchHistory(params.search);
  }
}

class CacheSearchHistoryParams extends Equatable {
  const CacheSearchHistoryParams({@required this.search});

  final String search;

  @override
  List<Object> get props => [search];
}
