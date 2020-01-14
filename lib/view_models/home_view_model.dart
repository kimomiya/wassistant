import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wassistant/core/enums/shared_preferences_key.dart';
import 'package:wassistant/core/theme/theme.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel() {
    _initTheme();
  }

  ThemeData _appTheme = lightTheme;

  ThemeData get appTheme => _appTheme;

  bool get isDarkModeEnabled => _appTheme.brightness == Brightness.dark;

  Future<void> _initTheme() async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    final String key = SharedPreferenceKey.isDarkModeEnabled.toString();
    final bool isDarkModeEnabled = _prefs.getBool(key) ?? false;

    _toggleTheme(isDarkModeEnabled);

    notifyListeners();
  }

  Future<void> setTheme(bool isDarkModeEnabled) async {
    _toggleTheme(isDarkModeEnabled);

    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    final String key = SharedPreferenceKey.isDarkModeEnabled.toString();
    await _prefs.setBool(key, isDarkModeEnabled);

    notifyListeners();
  }
}

extension on HomeViewModel {
  void _toggleTheme(bool isDarkModeEnabled) {
    if (isDarkModeEnabled) {
      _appTheme = darkTheme;
    } else {
      _appTheme = lightTheme;
    }
  }
}
