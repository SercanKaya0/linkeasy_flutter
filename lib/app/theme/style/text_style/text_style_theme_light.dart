import 'package:flutter/material.dart';

class TextStyleThemeLight {
  static final TextStyleThemeLight instance = TextStyleThemeLight();
  TextStyle? headline1 =
      TextStyle(fontWeight: FontWeight.w800, color: Colors.black, fontSize: 30);
  TextStyle? headline2 =
      TextStyle(fontWeight: FontWeight.w800, color: Colors.black, fontSize: 20);
  TextStyle? headline3 = TextStyle(
      fontWeight: FontWeight.normal, color: Colors.lightGreen, fontSize: 14);
  TextStyle? subtitle1 =
      TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
}
