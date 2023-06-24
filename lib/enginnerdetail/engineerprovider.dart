import 'dart:convert';
import 'package:flutter/material.dart';

class EngineerProvider extends ChangeNotifier {
  final _jsonData = {
    "data": [
      {
        "name": "Suyanta",
        "img": "https://loremflickr.com/320/240?random=1",
        "location": "Medan Barat",
        "price": "250,000",
        "Service": "Service AC",
        "More": 
          [
            {"name":"Service AC","price":"250,000","value":false},
            {"name":"Cuci AC","price":"50,000","value":false},
            {"name":"Isi Freon","price":"150,000","value":false},
            {"name":"Ganti AC","price":"50,000","value":false},
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
        "exp": "5",
        "desc": "Menyediakan Service AC dan Isi Freon"
      },
      {
        "name": "Suyanti",
        "img": "https://loremflickr.com/320/240?random=3",
        "location": "Medan Tuntungan",
        "price": "100,000",
        "Service": "Isi Freon",
        "exp": "1",
        "desc": "Menyediakan Jasa Cuci AC dan Service AC"
      },
      {
        "name": "Suyanto",
        "img": "https://loremflickr.com/320/240?random=4",
        "location": "Medan Kota",
        "price": "225,000",
        "Service": "Service AC",
        "exp": "4",
        "desc": "Menyediakan Jasa Cuci AC dan Isi Freon"
      },
      {
        "name": "Suyantu",
        "img": "https://loremflickr.com/320/240?random=1",
        "location": "Medan Denai",
        "price": "350,000",
        "Service": "Ganti AC",
        "exp": "6",
        "desc": "Menyediakan Jasa Cuci AC dan Isi Freon"
      },
    ]
  };

  get jsonData {
    var tmp = json.encode(_jsonData);
    return json.decode(tmp);
  }
}
