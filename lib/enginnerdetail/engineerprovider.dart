import 'dart:convert';
import 'package:flutter/material.dart';

class EngineerProvider extends ChangeNotifier {
  var JsonData = {
    "data": [
      {
        "name": "Suyanta",
        "img": "https://loremflickr.com/320/240?random=1",
        "location": "Medan Barat",
        "price": "250,000",
        "Service": "Service AC",
        "more": [
          {"name": "Service AC", "price": 250000, "value": false},
          {"name": "Cuci AC", "price": 50000, "value": false},
          {"name": "Isi Freon", "price": 150000, "value": false},
          {"name": "Ganti AC", "price": 500000, "value": false},
        ],
        "exp": "3",
        "desc": "Menyediakan Jasa Cuci AC dan Isi Freon"
      },
      {
        "name": "Suyante",
        "img": "https://loremflickr.com/320/240?random=2",
        "location": "Medan Timur",
        "price": "50,000",
        "Service": "Cuci AC",
        "more": [
          {"name": "Service AC", "price": 250000, "value": false},
          {"name": "Cuci AC", "price": 50000, "value": false},
          {"name": "Isi Freon", "price": 150000, "value": false},
          {"name": "Ganti AC", "price": 500000, "value": false},
        ],
        "exp": "5",
        "desc": "Menyediakan Service AC dan Isi Freon"
      },
      {
        "name": "Suyanti",
        "img": "https://loremflickr.com/320/240?random=3",
        "location": "Medan Tuntungan",
        "price": "100,000",
        "Service": "Isi Freon",
        "more": [
          {"name": "Service AC", "price": 250000, "value": false},
          {"name": "Cuci AC", "price": 50000, "value": false},
          {"name": "Isi Freon", "price": 150000, "value": false},
          {"name": "Ganti AC", "price": 500000, "value": false},
        ],
        "exp": "1",
        "desc": "Menyediakan Jasa Cuci AC dan Service AC"
      },
      {
        "name": "Suyanto",
        "img": "https://loremflickr.com/320/240?random=4",
        "location": "Medan Kota",
        "price": "225,000",
        "Service": "Service AC",
        "more": [
          {"name": "Service AC", "price": 250000, "value": false},
          {"name": "Cuci AC", "price": 50000, "value": false},
          {"name": "Isi Freon", "price": 150000, "value": false},
          {"name": "Ganti AC", "price": 500000, "value": false},
        ],
        "exp": "4",
        "desc": "Menyediakan Jasa Cuci AC dan Isi Freon"
      },
      {
        "name": "Suyantu",
        "img": "https://loremflickr.com/320/240?random=1",
        "location": "Medan Denai",
        "price": "350,000",
        "Service": "Ganti AC",
        "more": [
          {"name": "Service AC", "price": 250000, "value": false},
          {"name": "Cuci AC", "price": 50000, "value": false},
          {"name": "Isi Freon", "price": 150000, "value": false},
          {"name": "Ganti AC", "price": 700000, "value": false},
          {"name": "Ganti Selang Bocor", "price": 200000, "value": false},
          {"name": "Servis Kompresor AC", "price": 350000, "value": false},
        ],
        "exp": "6",
        "desc": "Menyediakan Jasa Cuci AC dan Isi Freon"
      },
    ]
  };

  get jsonData {
    var tmp = json.encode(JsonData);
    return json.decode(tmp);
  }

  void tesaja(int idx, int index, bool value) {
    var tmp1 = JsonData['data']![idx]['more'] as List;
    tmp1[index]['value'] = value;
    notifyListeners();
  }
}
