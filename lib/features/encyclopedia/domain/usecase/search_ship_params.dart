import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/ship_param.dart';
import 'package:wassistant/features/encyclopedia/domain/repositories/pedia_repository.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';

class SearchShipParams
    implements UseCase<List<PediaShipParam>, SearchShipParamsParams> {
  SearchShipParams(this._repository);

  final PediaRepository _repository;

  @override
  Future<Either<Failure, List<PediaShipParam>>> call(
    SearchShipParamsParams searchShipParamsParams,
  ) async {
    return await _repository.searchShipParams(searchShipParamsParams.search);
  }
}

class SearchShipParamsParams extends Equatable {
  const SearchShipParamsParams({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [search];
}
