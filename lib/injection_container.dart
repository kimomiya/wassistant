import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/env/env.dart';
import 'core/network/network_info.dart';
import 'features/search/data/data_sources/search_local_data_source.dart';
import 'features/search/data/data_sources/search_remote_data_source.dart';
import 'features/search/data/repositories/search_repository_impl.dart';
import 'features/search/domain/repositories/search_repository.dart';
import 'features/search/domain/usecase/cache_search_history.dart';
import 'features/search/domain/usecase/get_suggestible_history.dart';
import 'features/search/domain/usecase/search_clans.dart';
import 'features/search/domain/usecase/search_players.dart';
import 'features/search/presentation/bloc/search_bloc.dart';

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
  locator.registerLazySingleton<SearchRemoteDataSource>(
    () => SearchRemoteDataSourceImpl(
      locator: locator,
      client: locator<Dio>(),
    ),
  );
  locator.registerLazySingleton<SearchLocalDataSource>(
    () => SearchLocalDataSourceImpl(
      prefs: locator<SharedPreferences>(),
    ),
  );

  //* Repository
  locator.registerLazySingleton<SearchRepository>(
    () => SearchRepositoryImpl(
      locator: locator,
      remoteDataSource: locator<SearchRemoteDataSource>(),
      localDataSource: locator<SearchLocalDataSource>(),
      networkInfo: locator<NetworkInfo>(),
    ),
  );

  //* Usecase
  locator.registerLazySingleton(
    () => GetSuggestibleHistory(locator<SearchRepository>()),
  );
  locator.registerLazySingleton(
    () => CacheSearchHistory(locator<SearchRepository>()),
  );
  locator.registerLazySingleton(
    () => SearchPlayers(locator<SearchRepository>()),
  );
  locator.registerLazySingleton(
    () => SearchClans(locator<SearchRepository>()),
  );

  //* BLoC
  locator.registerFactory(
    () => SearchBloc(
      suggestions: locator<GetSuggestibleHistory>(),
      history: locator<CacheSearchHistory>(),
      players: locator<SearchPlayers>(),
      clans: locator<SearchClans>(),
    ),
  );
}
