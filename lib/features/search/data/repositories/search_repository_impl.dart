import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../../core/constants/status_code.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/clan.dart';
import '../../domain/entities/player.dart';
import '../../domain/entities/search_history.dart';
import '../../domain/repositories/search_repository.dart';
import '../data_sources/search_local_data_source.dart';
import '../data_sources/search_remote_data_source.dart';
import '../models/search_history_model.dart';

typedef _Executable<Type> = Future<Type> Function();

class SearchRepositoryImpl implements SearchRepository {
  const SearchRepositoryImpl({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  final SearchRemoteDataSource remoteDataSource;
  final SearchLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Either<Failure, SearchHistory>> getSuggestibleHistory(
    String search,
  ) async {
    try {
      final searchHistory = await localDataSource.getSearchHistory();
      final cachedHistory = searchHistory.history;
      final suggestibleHistory = cachedHistory.reversed
          .where(
            (item) => item.contains(search),
          )
          .toList();
      return Future.value(
        Right(SearchHistory(history: suggestibleHistory)),
      );
    } on CacheException catch (e) {
      return Left(CacheFailure(code: e.code, message: e.message));
    } catch (e) {
      return Left(
        CacheFailure(code: StatusCode.fatalError, message: e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, void>> cacheSearchHistory(String search) async {
    final cachedHistory = await localDataSource.getSearchHistory();
    final history = cachedHistory.history
        .where(
          (item) => item != search,
        )
        .toList();
    history.add(search);
    final result = await localDataSource.cacheSearchHistory(
      SearchHistoryModel(history: history),
    );
    return Right(result);
  }

  @override
  Future<Either<Failure, List<Player>>> searchPlayers(String search) async {
    return await _execute(() {
      return remoteDataSource.searchPlayers(search);
    });
  }

  @override
  Future<Either<Failure, List<Clan>>> searchClans(String search) async {
    return await _execute(() {
      return remoteDataSource.searchClans(search);
    });
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
