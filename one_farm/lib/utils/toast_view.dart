import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum ToastStyle {
  success,
  error,
  warning
}

class ToastMessage {
  static void show(String message, ToastStyle style) {
    MaterialAccentColor bgColor = Colors.greenAccent;
    if(style == ToastStyle.success) {
      bgColor = Colors.greenAccent;
    } else if (style == ToastStyle.warning) {
      bgColor = Colors.orangeAccent;
    } else if (style == ToastStyle.error) {
      bgColor = Colors.redAccent;
    }
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: bgColor,
        textColor: Colors.white,
        fontSize: 14.0
    );
  }
}