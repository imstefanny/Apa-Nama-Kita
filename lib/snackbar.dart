import 'package:flutter/material.dart';

class CustomSnackBar {
  getSnackBar(BuildContext context, String content) {
    return SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(bottom: 100),
      content: Text(content),
      duration: Duration(seconds: 1),
    );
  }
}
