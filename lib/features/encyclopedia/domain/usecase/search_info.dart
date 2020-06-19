import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/info.dart';
import 'package:wassistant/features/encyclopedia/domain/repositories/pedia_repository.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';

class SearchPediaInfo
    implements UseCase<List<PediaInfo>, SearchPediaInfoParams> {
  SearchPediaInfo(this._repository);

  final PediaRepository _repository;

  @override
  Future<Either<Failure, List<PediaInfo>>> call(
    SearchPediaInfoParams searchInfosParams,
  ) async {
    return await _repository.searchInfo(searchInfosParams.search);
  }
}

class SearchPediaInfoParams extends Equatable {
  const SearchPediaInfoParams({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [search];
}
