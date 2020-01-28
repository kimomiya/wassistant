import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'core/network/network_info.dart';
import 'features/player/data/data_sources/player_remote_data_source.dart';
import 'features/player/data/repositories/palyer_repository_impl.dart';
import 'features/player/domain/repositories/player_repository.dart';
import 'features/player/domain/usecaces/fetch_player_info.dart';
import 'features/player/domain/usecaces/fetch_player_list.dart';

final locator = GetIt.instance;

Future<void> init() async {
  //! External
  locator.registerLazySingleton(() => Connectivity());
  locator.registerLazySingleton(() => Dio());

  //! Core
  locator.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(locator<Connectivity>()),
  );

  //! Features - Player
  //* Data source
  locator.registerLazySingleton(
    () => PlayerRemoteDataSourceImpl(client: locator<Dio>()),
  );

  //* Repository
  locator.registerLazySingleton<PlayerRepository>(
    () => PlayerRepositoryImpl(
      remoteDataSource: locator<PlayerRemoteDataSource>(),
      networkInfo: locator<NetworkInfo>(),
    ),
  );

  //* Usecase
  locator.registerLazySingleton(
    () => FetchPlayerList(locator<PlayerRepository>()),
  );
  locator.registerLazySingleton(
    () => FetchPlayerInfo(locator<PlayerRepository>()),
  );
}
