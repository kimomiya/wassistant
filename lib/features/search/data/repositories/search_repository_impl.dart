import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/player.dart';
import '../../domain/repositories/search_repository.dart';
import '../data_sources/search_remote_data_source.dart';

typedef _Executable<Type> = Future<Type> Function();

class SearchRepositoryImpl implements SearchRepository {
  const SearchRepositoryImpl({
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  final SearchRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Either<Failure, List<Player>>> fetchPlayerList(String search) async {
    return await _fetchData(() {
      return remoteDataSource.fetchPlayerList(search);
    });
  }

  Future<Either<Failure, Type>> _fetchData<Type>(
    _Executable<Type> executor,
  ) async {
    if (!await networkInfo.isConnected) {
      return Left(const ServerFailure(
        code: 0,
        message: 'Network is unreachable.',
      ));
    }

    try {
      final result = await executor();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(code: e.code, message: e.message));
    } on DioError catch (e) {
      return Left(ServerFailure(
        code: e.response?.statusCode ?? 1,
        message: e.response?.statusMessage ?? e.message,
      ));
    } catch (e) {
      return Left(ServerFailure(code: 1, message: e.toString()));
    }
  }
}
