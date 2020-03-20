import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wassistant/core/env/env.dart';

import 'core/network/network_info.dart';
import 'features/player/data/data_sources/player_remote_data_source.dart';
import 'features/player/data/repositories/palyer_repository_impl.dart';
import 'features/player/domain/repositories/player_repository.dart';
import 'features/player/domain/usecaces/fetch_player_info.dart';
import 'features/search/data/data_sources/search_local_data_source.dart';
import 'features/search/data/data_sources/search_remote_data_source.dart';
import 'features/search/data/repositories/search_repository_impl.dart';
import 'features/search/domain/repositories/search_repository.dart';
import 'features/search/domain/usecase/search_players.dart';

final locator = GetIt.instance;

Future<void> init() async {
  //! External
  locator.registerLazySingleton(() => Env());
  locator.registerLazySingleton(() => DataConnectionChecker());
  locator.registerLazySingleton(() => Dio());
  final _prefs = await SharedPreferences.getInstance();
  locator.registerLazySingleton(() => _prefs);

  //! Core
  locator.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(locator<DataConnectionChecker>()),
  );

  //! Features - Search
  //* Data source
  locator.registerLazySingleton(
    () => SearchRemoteDataSourceImpl(client: locator<Dio>()),
  );
  locator.registerLazySingleton(
    () => SearchLocalDataSourceImpl(prefs: locator<SharedPreferences>()),
  );

  //* Repository
  locator.registerLazySingleton<SearchRepository>(
    () => SearchRepositoryImpl(
      remoteDataSource: locator<SearchRemoteDataSource>(),
      localDataSource: locator<SearchLocalDataSource>(),
      networkInfo: locator<NetworkInfo>(),
    ),
  );

  //* Usecase
  locator.registerLazySingleton(
    () => SearchPlayers(locator<SearchRepository>()),
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
    () => FetchPlayerInfo(locator<PlayerRepository>()),
  );
}
