import 'package:fluro/fluro.dart';
import 'package:wassistant/ui/screens/root_page.dart';
import 'package:wassistant/ui/screens/settings_page.dart';

final rootHandler = Handler(
  handlerFunc: (_, params) => RootPage(),
);

final settingsHandler = Handler(
  handlerFunc: (_, params) => SettingsPage(
    // TODO(hiei): WIP
    text: params['text'].first ?? '',
  ),
);
