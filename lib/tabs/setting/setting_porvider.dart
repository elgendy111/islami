import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String language = 'en';

  bool get isDark => themeMode == ThemeMode.dark;
  String get backgroundImagePath =>
      isDark ? 'assets/images/dark_bg.png' : 'assets/images/default_bg.png';

  void changeThemeMode(ThemeMode selectedTheme) {
    themeMode = selectedTheme;
    notifyListeners();
  }

  void changeLanguage(String selectedLanguage) {
    language = selectedLanguage;
    notifyListeners();
  }
}
