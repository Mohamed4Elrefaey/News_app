import 'package:flutter/material.dart';

import '../remote/local/prefs_manager.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode theme = ThemeMode.light;

  void initTheme() {
    theme = PrefsManager.getThemeMode();
    notifyListeners();
  }

  void changeTheme(ThemeMode newMode) {
    theme = newMode;
    PrefsManager.saveThemeMode(newMode);
    notifyListeners();
  }
}
