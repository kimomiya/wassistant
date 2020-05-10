// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:wassistant/infrastructure/core/injectable_module.dart';
import 'package:dio/dio.dart';
import 'package:wassistant/shared/env.dart';
import 'package:get_it/get_it.dart';
import 'package:wassistant/infrastructure/core/network_info.dart';
import 'package:package_info/package_info.dart';
import 'package:wassistant/infrastructure/search/data_sources/search_remote_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wassistant/infrastructure/search/data_sources/search_local_data_source.dart';
import 'package:wassistant/infrastructure/search/repositories/search_repository_impl.dart';
import 'package:wassistant/domain/search/repositories/search_repository.dart';
import 'package:wassistant/application/search/search_bloc.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final injectableModule = _$InjectableModule();
  g.registerLazySingleton<DataConnectionChecker>(
      () => injectableModule.dataConnectionChecker);
  g.registerLazySingleton<Dio>(() => injectableModule.dio);
  g.registerLazySingleton<Env>(() => injectableModule.env);
  g.registerLazySingleton<GetIt>(() => injectableModule.locator);
  g.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(g<DataConnectionChecker>()));
  final packageInfo = await injectableModule.packageInfo;
  g.registerFactory<PackageInfo>(() => packageInfo);
  g.registerLazySingleton<SearchRemoteDataSource>(
      () => SearchRemoteDataSourceImpl(locator: g<GetIt>(), client: g<Dio>()));
  final sharedPreferences = await injectableModule.prefs;
  g.registerFactory<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<SearchLocalDataSource>(
      () => SearchLocalDataSourceImpl(prefs: g<SharedPreferences>()));
  g.registerLazySingleton<SearchRepository>(() => SearchRepositoryImpl(
        locator: g<GetIt>(),
        remoteDataSource: g<SearchRemoteDataSource>(),
        localDataSource: g<SearchLocalDataSource>(),
        networkInfo: g<NetworkInfo>(),
      ));
  g.registerFactory<SearchBloc>(() => SearchBloc(g<SearchRepository>()));
}

class _$InjectableModule extends InjectableModule {}
