// ! THEME
// ! MODEL
// ! COLORS

import 'package:flutter/material.dart';

// * Uygulama renkleri buradan gelmektedir.
class ThemeColorsModel {
  static final ThemeColorsModel instance = ThemeColorsModel();
  // * BACKGROUND COLOR
  final Color backgroundColorLIGHT = Color(0XFFf0f1f6);
  final Color backgroundColorDARK = Color(0XFFf0f1f6);

  // * FLOATING ACTION BUTTON
  final Color floatingActionButtonColorDARK = Colors.white;
  final Color floatingActionButtonColorLIGHT = Colors.white;

  // * TEXTFİELD
  final Color textFieldBackgroundColorDARK = Color(0XFF3b3d4a).withOpacity(0.4);
  final Color textFieldBackgroundColorLIGHT = Colors.grey.withOpacity(0.1);

// * TEXTBUTTON
  final Color textButtonForegroundColorDARK = Colors.blue;
  final Color textButtonForegroundColorLIGHT = Colors.blue;

  // * Bottom Navbar color
  final Color bottomNavbarBackgroundColorDARK = Color(0XFF33343d);
  final Color bottomNavbarBackgroundColorLIGHT = Color(0XFFd8dbe3);

  final Color whiteColor = Colors.white;
  final Color blackColor = Colors.black;
  final Color redColor = Color(0XFFEA3348);
}
