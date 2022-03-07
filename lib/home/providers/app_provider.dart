import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  String appLanguage = 'en';
  ThemeMode themeMode = ThemeMode.light;

  void changeLanguage(String languageCode) {
    appLanguage = languageCode;
    notifyListeners();
  }

  void changeTheme(ThemeMode themeMode) {
    this.themeMode = themeMode;
    notifyListeners();
  }

  String getMainBackGround() {
    return themeMode == ThemeMode.light
        ? 'assets/images/main_background.png'
        : 'assets/images/main_background_dar.png';
  }
}
