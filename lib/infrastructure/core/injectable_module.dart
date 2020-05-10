import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info/package_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../shared/env.dart';

@registerModule
abstract class InjectableModule {
  @lazySingleton
  Env get env => Env();

  @lazySingleton
  GetIt get locator => GetIt.instance;

  @preResolve
  Future<PackageInfo> get packageInfo => PackageInfo.fromPlatform();

  @lazySingleton
  DataConnectionChecker get dataConnectionChecker => DataConnectionChecker();

  @lazySingleton
  Dio get dio => Dio(
        BaseOptions(
          validateStatus: (status) => 200 <= status && status < 300,
        ),
      );

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
