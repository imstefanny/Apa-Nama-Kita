import 'package:flutter/material.dart';

class CustomSnackBar {
  getSnackBar(BuildContext context, String content) {
    return SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
        bottom: 50,
        left: 15,
        right: 15,
      ),
      content: Text(content),
      duration: Duration(seconds: 2),
    );
  }
}
