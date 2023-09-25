import 'package:flutter/material.dart';

// subject - observable - publisher
// data holder
class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLocale = 'en';

  void changeTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) {
      return;
    }
    currentTheme = newTheme; // data changed
    notifyListeners(); // notify every object
    // that observes the current theme
  }

  String getMainBackground() {
    return currentTheme == ThemeMode.dark
        ? 'assets/images/main_background_dark.png'
        : 'assets/images/main_background.png';
  }

  bool isDarkEnabled() {
    return currentTheme == ThemeMode.dark;
  }

  void changeLocale(String newLocale) {
    if (newLocale == currentLocale) return;
    currentLocale = newLocale;
    notifyListeners();
  }
}
