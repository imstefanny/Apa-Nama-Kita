import 'package:flutter/material.dart';

class CustomSnackBar {
  getSnackBar(BuildContext context, String content) {
    return SnackBar(
      content: Text(content),
      duration: Duration(seconds: 1),
    );
  }
}
