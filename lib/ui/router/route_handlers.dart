import 'package:fluro/fluro.dart';
import 'package:wassistant/ui/screens/home_page.dart';
import 'package:wassistant/ui/screens/settings_page.dart';

final homeHandler = Handler(
  handlerFunc: (_, params) => HomePage(),
);

final settingsHandler = Handler(
  handlerFunc: (_, params) => SettingsPage(
    // TODO(hiei): WIP
    text: params['text'].first ?? '',
  ),
);
