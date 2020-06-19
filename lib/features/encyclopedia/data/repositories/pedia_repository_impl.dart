import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/features/encyclopedia/data/data_sources/pedia_local_data_source.dart';
import 'package:wassistant/features/encyclopedia/data/data_sources/pedia_remote_data_source.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_history_model.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/ship.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/ship_param.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/pedia_history.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/module.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/info.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/commander.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/commander_skill.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/commander_rank.dart';
import 'package:wassistant/features/encyclopedia/domain/entities/achievement.dart';
import 'package:wassistant/features/encyclopedia/domain/repositories/pedia_repository.dart';

import '../../../../core/constants/error_message.dart';
import '../../../../core/constants/status_code.dart';
import '../../../../core/env/env.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/network_info.dart';

typedef _Executable<Type> = Future<Type> Function();

class PediaRepositoryImpl implements PediaRepository {
  const PediaRepositoryImpl({
    @required this.locator,
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  final GetIt locator;
  final PediaRemoteDataSource remoteDataSource;
  final PediaLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Either<Failure, void>> cachePediaHistory(String search) async {
    final cachedHistory = await localDataSource.getPediaHistory();
    final history = cachedHistory.history
        .where(
          (item) => item != search,
        )
        .toList();
    history.add(search);

    final env = locator<Env>();
    if (history.length > env.searchHistoryStorageLimit) {
      history.removeAt(0);
    }

    final result = await localDataSource.cachePediaHistory(
      PediaHistoryModel(history: history),
    );
    return Right(result);
  }

  @override
  Future<Either<Failure, SearchPediaHistory>> getSuggestiblePediaHistory(
      String search) async {
    try {
      final searchHistory = await localDataSource.getPediaHistory();
      final cachedHistory = searchHistory.history;
      final suggestibleHistory = cachedHistory.reversed
          .where(
            (item) => item.contains(search),
          )
          .toList();
      return Future.value(
          Right(SearchPediaHistory(history: suggestibleHistory)));
    } on CacheException catch (e) {
      return Left(CacheFailure(code: e.code, message: e.message));
    } catch (e) {
      return Left(
        CacheFailure(code: StatusCode.fatalError, message: e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, List<PediaAchievement>>> searchAchievements(
      String search) {
    // TODO: implement searchAchievements
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<PediaCommanderRank>>> searchCommanderRanks(
      String search) {
    // TODO: implement searchCommanderRanks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<PediaCommanderSkill>>> searchCommanderSkills(
      String search) {
    // TODO: implement searchCommanderSkills
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<PediaCommander>>> searchCommanders(
      String search) {
    // TODO: implement searchCommanders
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<PediaInfo>>> searchInfo(String search) {
    // TODO: implement searchInfo
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<PediaModule>>> searchModules(String search) {
    // TODO: implement searchModules
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<PediaShipParam>>> searchShipParams(
      String search) {
    // TODO: implement searchShipParams
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<PediaShip>>> searchShips(String search) {
    // TODO: implement searchShips
    throw UnimplementedError();
  }

  Future<Either<Failure, Type>> _execute<Type>(
    _Executable<Type> execution,
  ) async {
    try {
      await networkInfo.checkConnection();
      final result = await execution();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(code: e.code, message: e.message));
    } on DioError catch (e) {
      return Left(
        ServerFailure(
          code: e.response?.statusCode ?? StatusCode.fatalError,
          message: e.response?.statusMessage ?? e.message,
        ),
      );
    } catch (e) {
      return Left(
        ServerFailure(code: StatusCode.fatalError, message: e.toString()),
      );
    }
  }
}
