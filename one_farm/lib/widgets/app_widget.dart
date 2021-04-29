import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

BoxDecoration boxDecoration({double radius = 2, Color color = Colors.transparent, Color bgColor, var showShadow = false}) {
  return BoxDecoration(
    color: bgColor ?? Colors.red,
    boxShadow: showShadow ? defaultBoxShadow(shadowColor: shadowColorGlobal) : [BoxShadow(color: Colors.transparent)],
    border: Border.all(color: color),
    borderRadius: BorderRadius.all(Radius.circular(radius)),
  );
}