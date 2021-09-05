import 'package:flutter/material.dart';
import '../../../model/colors/colors_model.dart';

class InputDecorationThemeLight {
  static final InputDecorationThemeLight instance = InputDecorationThemeLight();
  final InputDecorationTheme? inputDecorationTheme = InputDecorationTheme(
    fillColor: ThemeColorsModel.instance.textFieldBackgroundColorLIGHT,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5), borderSide: BorderSide.none),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Colors.red)),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5), borderSide: BorderSide.none),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5), borderSide: BorderSide.none),
    disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5), borderSide: BorderSide.none),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5), borderSide: BorderSide.none),
  );
}
