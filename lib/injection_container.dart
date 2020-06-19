import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/env/env.dart';
import 'core/network/network_info.dart';
import 'features/encyclopedia/data/data_sources/pedia_local_data_source.dart';
import 'features/encyclopedia/data/data_sources/pedia_remote_data_source.dart';
import 'features/encyclopedia/data/repositories/pedia_repository_impl.dart';
import 'features/encyclopedia/domain/repositories/pedia_repository.dart';
import 'features/encyclopedia/domain/usecase/cache_pedia_history.dart';
import 'features/encyclopedia/domain/usecase/get_suggestible_history.dart';
import 'features/encyclopedia/domain/usecase/search_achievements.dart';
import 'features/encyclopedia/domain/usecase/search_commander_ranks.dart';
import 'features/encyclopedia/domain/usecase/search_commander_skills.dart';
import 'features/encyclopedia/domain/usecase/search_commanders.dart';
import 'features/encyclopedia/domain/usecase/search_info.dart';
import 'features/encyclopedia/domain/usecase/search_modules.dart';
import 'features/encyclopedia/domain/usecase/search_ship_params.dart';
import 'features/encyclopedia/domain/usecase/search_ships.dart';
import 'features/encyclopedia/presentation/bloc/pedia_bloc.dart';

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
  locator.registerLazySingleton<PediaRemoteDataSource>(
    () => PediaRemoteDataSourceImpl(
      locator: locator,
      client: locator<Dio>(),
    ),
  );
  locator.registerLazySingleton<PediaLocalDataSource>(
    () => PediaLocalDataSourceImpl(
      prefs: locator<SharedPreferences>(),
    ),
  );

  //* Repository
  locator.registerLazySingleton<PediaRepository>(
    () => PediaRepositoryImpl(
      locator: locator,
      remoteDataSource: locator<PediaRemoteDataSource>(),
      localDataSource: locator<PediaLocalDataSource>(),
      networkInfo: locator<NetworkInfo>(),
    ),
  );

  //* Usecase
  locator.registerLazySingleton(
    () => GetSuggestiblePediaHistory(locator<PediaRepository>()),
  );
  locator.registerLazySingleton(
    () => CachePediaHistory(locator<PediaRepository>()),
  );
  locator.registerLazySingleton(
    () => SearchAchievements(locator<PediaRepository>()),
  );
  locator.registerLazySingleton(
    () => SearchCommanders(locator<PediaRepository>()),
  );
  locator.registerLazySingleton(
    () => SearchCommanderRanks(locator<PediaRepository>()),
  );
  locator.registerLazySingleton(
    () => SearchCommanderSkills(locator<PediaRepository>()),
  );
  locator.registerLazySingleton(
    () => SearchModules(locator<PediaRepository>()),
  );
  locator.registerLazySingleton(
    () => SearchShips(locator<PediaRepository>()),
  );
  locator.registerLazySingleton(
    () => SearchShipParams(locator<PediaRepository>()),
  );
  locator.registerLazySingleton(
    () => SearchPediaInfo(locator<PediaRepository>()),
  );

  //* BLoC
  locator.registerFactory(
    () => PediaBloc(
      suggestions: locator<GetSuggestiblePediaHistory>(),
      history: locator<CachePediaHistory>(),
      achievements: locator<SearchAchievements>(),
      commanders: locator<SearchCommanders>(),
      commanderRanks: locator<SearchCommanderRanks>(),
      commanderSkills: locator<SearchCommanderSkills>(),
      modules: locator<SearchModules>(),
      ships: locator<SearchShips>(),
      shipParams: locator<SearchShipParams>(),
      info: locator<SearchPediaInfo>(),
    ),
  );
}
