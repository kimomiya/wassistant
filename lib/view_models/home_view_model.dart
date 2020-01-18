import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wassistant/core/enums/shared_preferences_key.dart';
import 'package:wassistant/core/theme/theme.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel() {
    _initTheme();
  }

  var _appTheme = lightTheme;

  ThemeData get appTheme => _appTheme;

  bool get isDarkModeEnabled => _appTheme.brightness == Brightness.dark;

  Future<void> _initTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final key = SharedPreferenceKey.isDarkModeEnabled.toString();
    final isDarkModeEnabled = prefs.getBool(key) ?? false;

    _toggleTheme(isDarkModeEnabled);

    notifyListeners();
  }

  Future<void> setTheme(bool isDarkModeEnabled) async {
    _toggleTheme(isDarkModeEnabled);

    final prefs = await SharedPreferences.getInstance();
    final key = SharedPreferenceKey.isDarkModeEnabled.toString();
    await prefs.setBool(key, isDarkModeEnabled);

    notifyListeners();
  }
}

extension Private on HomeViewModel {
  void _toggleTheme(bool isDarkModeEnabled) {
    if (isDarkModeEnabled) {
      _appTheme = darkTheme;
    } else {
      _appTheme = lightTheme;
    }
  }
}
