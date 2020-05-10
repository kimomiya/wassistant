import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/search/entities/clan.dart';
import '../../../domain/search/entities/player.dart';
import '../../../domain/search/repositories/search_repository.dart';
import '../../../domain/search/search_failure.dart';
import '../../../shared/env.dart';
import '../../../shared/utils/logger.dart';
import '../../core/network_info.dart';
import '../../core/status_code.dart';
import '../data_sources/search_local_data_source.dart';
import '../data_sources/search_remote_data_source.dart';
import '../dtos/clan_dto.dart';
import '../dtos/player_dto.dart';

typedef _Executable<Type> = Future<Type> Function();

@lazySingleton
@RegisterAs(SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  const SearchRepositoryImpl({
    @required this.locator,
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  final GetIt locator;
  final SearchRemoteDataSource remoteDataSource;
  final SearchLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Either<SearchFailure, KtList<String>>> getSuggestibleHistory(
    String search,
  ) async {
    try {
      final history = await localDataSource.readSearchHistory() ?? [];
      final suggestibleHistory = history.reversed
          .where((value) => value.contains(search))
          .toImmutableList();
      return right(suggestibleHistory);
    } catch (e) {
      logger.e(e.toString());
      return right(KtList.empty());
    }
  }

  @override
  Future<Either<SearchFailure, KtList<Player>>> searchPlayers(
    String search,
  ) async {
    try {
      final players = await _execute(() async {
        await _writeSearchWord(search);
        final playerDtos = await remoteDataSource.searchPlayers(search);
        return playerDtos.map((dto) => dto.toDomain()).toImmutableList();
      });

      if (players.isEmpty()) {
        return left(const SearchFailure.noContent());
      }

      return right(players);
    } on SearchFailure catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<SearchFailure, KtList<Clan>>> searchClans(
    String search,
  ) async {
    try {
      final clans = await _execute(() async {
        await _writeSearchWord(search);
        final clanDtos = await remoteDataSource.searchClans(search);

        return clanDtos.map((dto) => dto.toDomain()).toImmutableList();
      });

      if (clans.isEmpty()) {
        return left(const SearchFailure.noContent());
      }

      return right(clans);
    } on SearchFailure catch (e) {
      return left(e);
    }
  }

  //* Helper methods

  Future<void> _writeSearchWord(
    String search,
  ) async {
    try {
      final history = await localDataSource.readSearchHistory() ?? [];
      history.add(search);

      final maxLength = locator<Env>().searchHistoryStorageLimit;
      if (history.length >= maxLength) {
        history.removeAt(0);
      }

      await localDataSource.writeSearchHistory(history);
    } catch (e) {
      logger.e(e.toString());
    }
  }

  Future<Type> _execute<Type>(
    _Executable<Type> execution,
  ) async {
    try {
      if (!await networkInfo.isConnected) {
        throw const SearchFailure.networkUnreachable();
      }
      return await execution();
    } on DioError catch (e) {
      logger.e(e.toString());

      final statusCode = e.response?.statusCode ?? StatusCode.serverError;
      switch (statusCode) {
        case StatusCode.notEnoughSearchLength:
          throw const SearchFailure.notEnoughSearchLength();

        default:
          throw const SearchFailure.serverError();
      }
    } catch (e) {
      logger.e(e.toString());

      throw const SearchFailure.serverError();
    }
  }
}
