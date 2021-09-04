import 'package:flutter/material.dart';

import '../../../model/colors/colors_model.dart';

class InputDecorationThemeDark {
  static final InputDecorationThemeDark instance = InputDecorationThemeDark();
  final InputDecorationTheme? inputDecorationTheme = InputDecorationTheme(
    fillColor: ThemeColorsModel.instance.textFieldBackgroundColorDARK,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
    disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
  );
}
