import 'dart:convert';

import 'package:flutter/material.dart';

class TransactionProvider extends ChangeNotifier {
  final _jsonData = {
    "dummy": [
      {
        "name": "Dudung",
        "problem": "Selang AC Bocor",
        "price": 120000,
        "price1": 115560,
        "status": 1,
        "date": '28 April 2023',
      },
      {
        "name": "Dadang",
        "problem": "Cuci AC",
        "price": 50000,
        "price1": 48150,
        "status": 0,
        "date": '23 April 2023',
      },
      {
        "name": "Dodong",
        "problem": "Freon Bocor",
        "price": 150000,
        "price1": 144450,
        "status": 1,
        "date": '18 April 2023',
      },
      {
        "name": "Dedeng",
        "problem": "Compresor Rusak",
        "price": 350000,
        "price1": 337050,
        "status": 1,
        "date": '14 April 2023',
      },
    ]
  };

  get dummyData {
    var tmp = json.encode(_jsonData);
    return json.decode(tmp);
  }
}