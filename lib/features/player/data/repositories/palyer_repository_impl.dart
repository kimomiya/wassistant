import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../../core/constants/status_code.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/player_details.dart';
import '../../domain/repositories/player_repository.dart';
import '../data_sources/player_remote_data_source.dart';

typedef _Executable<Type> = Future<Type> Function();

class PlayerRepositoryImpl implements PlayerRepository {
  const PlayerRepositoryImpl({
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  final PlayerRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Either<Failure, PlayerDetails>> fetchPlayerDetails(
      int accountId) async {
    return await _fetchData(() {
      return remoteDataSource.fetchPlayerDetails(accountId);
    });
  }

  Future<Either<Failure, Type>> _fetchData<Type>(
    _Executable<Type> executor,
  ) async {
    try {
      await networkInfo.checkConnection();
      final result = await executor();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(code: e.code, message: e.message));
    } on DioError catch (e) {
      return Left(ServerFailure(
        code: e.response?.statusCode ?? StatusCode.fatalError,
        message: e.response?.statusMessage ?? e.message,
      ));
    } catch (e) {
      return Left(ServerFailure(
        code: StatusCode.fatalError,
        message: e.toString(),
      ));
    }
  }
}
