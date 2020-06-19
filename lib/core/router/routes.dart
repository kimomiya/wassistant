import 'package:fimber/fimber.dart';
import 'package:fluro/fluro.dart';

import 'route_handlers.dart';
import 'router.dart';

class Routes {
  static const home = '/';
  static const settings = '/settings';
  static const pedia = '/pedia';

  static void configure() {
    router.notFoundHandler = Handler(
      handlerFunc: (_, __) {
        Fimber.e('Route Was Not Found.');
        return null;
      },
    );

    router.define(pedia, handler: pediaHandler);
  }
}
