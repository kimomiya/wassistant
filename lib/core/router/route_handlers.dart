import 'package:fluro/fluro.dart';
import 'package:wassistant/features/home/presentation/pages/home_page.dart';
import 'package:wassistant/features/settings/presentation/pages/settings_page.dart';

final homeHandler = Handler(
  handlerFunc: (_, __) => const HomePage(),
);

final settingsHandler = Handler(
  handlerFunc: (_, __) => const SettingsPage(),
);
