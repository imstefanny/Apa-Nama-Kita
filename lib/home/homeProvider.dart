import 'package:flutter/material.dart';

class themeProvider extends ChangeNotifier {
  bool _enableDark = false;

  List _engineersdetail = [
    {
      "name": "Suyono", 
    "exp": "4", 
    "location": "Medan Barat, Medan"
    },
    {
      "name": "Suyona", 
    "exp": "2", 
    "location": "Medan Timur, Medan"
    },
    {
      "name": "Suyoni", 
    "exp": "3", 
    "location": "Medan Tuntungan, Medan"
    },
    {
      "name": "Suyone", 
    "exp": "5", 
    "location": "Medan Tembung, Medan"
    },
    {
      "name": "Suyonu", 
    "exp": "7", 
    "location": "Medan Maimun, Medan"
    },
  ];

  set enableDark(value) {
    _enableDark = value;
    notifyListeners();
  }

  set engineerdetail(value) {
    _engineersdetail = value;
    notifyListeners();
  }

  bool get enableDark => _enableDark;
  List get engineerdetail => _engineersdetail;

  var DarkTheme =
      ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark);

  var LightTheme =
      ThemeData(primarySwatch: Colors.blue, brightness: Brightness.light);
}