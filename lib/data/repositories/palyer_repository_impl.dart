import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../core/error/exceptions.dart';
import '../../core/error/failures.dart';
import '../../core/network/network_info.dart';
import '../../domain/entities/player.dart';
import '../../domain/entities/player_info.dart';
import '../../domain/repositories/player_repository.dart';
import '../data_sources/player_remote_data_source.dart';

typedef Future<Type> _ListOrInfoChooser<Type>();

class PlayerRepositoryImpl implements PlayerRepository {
  const PlayerRepositoryImpl({
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  final PlayerRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Either<Failure, List<Player>>> fetchPlayerList(String search) async {
    return await _fetchData(() {
      return remoteDataSource.fetchPlayerList(search);
    });
  }

  @override
  Future<Either<Failure, PlayerInfo>> fetchPlayerInfo(int accountId) async {
    return await _fetchData(() {
      return remoteDataSource.fetchPlayerInfo(accountId);
    });
  }

  Future<Either<Failure, Type>> _fetchData<Type>(
    _ListOrInfoChooser<Type> fetchListOrInfo,
  ) async {
    if (!await networkInfo.isConnected) {
      return Left(const ServerFailure());
    }

    try {
      final result = await fetchListOrInfo();
      return Right(result);
    } on ServerException {
      return Left(const ServerFailure());
    }
  }
}
