import 'package:flutter/widgets.dart';

const double baseFontSize = 8;

class MyFont {
  static TextStyle normalFont(double fontSize) {
    return TextStyle(fontSize: fontSize, fontFamily: "Opensans-Regular");
  }

  static TextStyle mediumFont(double fontSize) {
    return TextStyle(fontSize: fontSize, fontFamily: "Opensans-Semi-Bold");
  }

  static TextStyle boldFont(double fontSize) {
    return TextStyle(fontSize: fontSize, fontFamily: "Opensans-Bold");
  }

  static TextStyle italicFont(double fontSize) {
    return TextStyle(fontSize: fontSize, fontFamily: "Opensans-Italic");
  }

  //Normal
  static TextStyle normal1 = MyFont.normalFont(baseFontSize); //8
  static TextStyle normal2 = MyFont.normalFont(baseFontSize + 2); //10
  static TextStyle normal3 = MyFont.normalFont(baseFontSize + 4); //12
  static TextStyle normal4 = MyFont.normalFont(baseFontSize + 6); //14
  static TextStyle normal5 = MyFont.normalFont(baseFontSize + 8); //16
  static TextStyle normal6 = MyFont.normalFont(baseFontSize + 10); //18
  static TextStyle normal7 = MyFont.normalFont(baseFontSize + 12); //20

  //Medium
  static TextStyle medium1 = MyFont.mediumFont(baseFontSize); //8
  static TextStyle medium2 = MyFont.mediumFont(baseFontSize + 2); //10
  static TextStyle medium3 = MyFont.mediumFont(baseFontSize + 4); //12
  static TextStyle medium4 = MyFont.mediumFont(baseFontSize + 6); //14
  static TextStyle medium5 = MyFont.mediumFont(baseFontSize + 8); //16
  static TextStyle medium6 = MyFont.mediumFont(baseFontSize + 10); //18
  static TextStyle medium7 = MyFont.mediumFont(baseFontSize + 12); //20

  //Bold
  static TextStyle bold1 = MyFont.boldFont(baseFontSize); //8
  static TextStyle bold2 = MyFont.boldFont(baseFontSize + 2); //10
  static TextStyle bold3 = MyFont.boldFont(baseFontSize + 4); //12
  static TextStyle bold4 = MyFont.boldFont(baseFontSize + 6); //14
  static TextStyle bold5 = MyFont.boldFont(baseFontSize + 8); //16
  static TextStyle bold6 = MyFont.boldFont(baseFontSize + 10); //18
  static TextStyle bold7 = MyFont.boldFont(baseFontSize + 12); //20

  //Bold
  static TextStyle italic1 = MyFont.italicFont(baseFontSize); //8
  static TextStyle italic2 = MyFont.italicFont(baseFontSize + 2); //10
  static TextStyle italic3 = MyFont.italicFont(baseFontSize + 4); //12
  static TextStyle italic4 = MyFont.italicFont(baseFontSize + 6); //14
  static TextStyle italic5 = MyFont.italicFont(baseFontSize + 8); //16
  static TextStyle italic6 = MyFont.italicFont(baseFontSize + 10); //18
  static TextStyle italic7 = MyFont.italicFont(baseFontSize + 12); //20
}
