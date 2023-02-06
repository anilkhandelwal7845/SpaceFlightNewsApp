import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  var _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void setTheme(themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}


class ColorChanger with ChangeNotifier {
  var _colorMode = Colors.indigo;

  MaterialColor get color => _colorMode;

  void setColor(color) {
    _colorMode = color;

    notifyListeners();
  }
}
