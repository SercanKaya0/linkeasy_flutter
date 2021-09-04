import 'package:flutter/material.dart';

class ButtonStyleThemeLight {
  static final ButtonStyleThemeLight instance = ButtonStyleThemeLight();
  ButtonStyle? get textButtonStyle => ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
      textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(
          color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold)));
}
