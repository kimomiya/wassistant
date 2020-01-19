import 'package:fluro/fluro.dart';
import 'package:wassistant/ui/router/router.dart';
import 'package:wassistant/ui/router/route_handlers.dart';
import 'package:wassistant/utils/logger.dart';

class Routes {
  static const home = '/';
  static const settings = '/settings';

  static void configure() {
    router.notFoundHandler = Handler(
      handlerFunc: (context, params) {
        logger.e('No route for $context, with $params.');
        return null;
      },
    );

    router.define(home, handler: homeHandler);
    router.define(settings, handler: settingsHandler);
  }
}
