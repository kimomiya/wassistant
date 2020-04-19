import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'core/env/env.dart';
import 'core/network/network_info.dart';

final locator = GetIt.instance;

Future<void> init() async {
  //! External
  locator.registerLazySingleton(() => Env());
  locator.registerLazySingleton(() => DataConnectionChecker());
  locator.registerLazySingleton(() => Dio());

  //! Core
  locator.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(locator<DataConnectionChecker>()),
  );
}
