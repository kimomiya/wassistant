import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/ship.dart';
import 'package:wassistant/features/encyclopedia/domain/repositories/pedia_repository.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';

class SearchShips implements UseCase<List<PediaShip>, SearchShipsParams> {
  SearchShips(this._repository);

  final PediaRepository _repository;

  @override
  Future<Either<Failure, List<PediaShip>>> call(
    SearchShipsParams searchShipsParams,
  ) async {
    return await _repository.searchShips(searchShipsParams.search);
  }
}

class SearchShipsParams extends Equatable {
  const SearchShipsParams({
    @required this.search,
  });

  final String search;

  @override
  List<Object> get props => [search];
}
