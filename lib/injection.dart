import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.iconfig.dart';

final locator = GetIt.instance;

@injectableInit
void configure() {
  $initGetIt(locator);
}
