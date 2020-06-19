import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/module.dart';
import 'package:wassistant/features/encyclopedia/domain/repositories/pedia_repository.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';

class SearchModules implements UseCase<List<PediaModule>, SearchModulesParams> {
  SearchModules(this._repository);

  final PediaRepository _repository;

  @override
  Future<Either<Failure, List<PediaModule>>> call(
    SearchModulesParams searchModulesParams,
  ) async {
    return await _repository.searchModules(searchModulesParams.search);
  }
}

class SearchModulesParams extends Equatable {
  const SearchModulesParams({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [search];
}
