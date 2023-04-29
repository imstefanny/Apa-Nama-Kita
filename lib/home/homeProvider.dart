import 'package:flutter/material.dart';

class themeProvider extends ChangeNotifier {
  bool _enableDark = false;

  set enableDark(value) {
    _enableDark = value;
    notifyListeners();
  }

  bool get enableDark => _enableDark;

  var DarkTheme =
      ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark);

  var LightTheme =
      ThemeData(primarySwatch: Colors.blue, brightness: Brightness.light);
}
