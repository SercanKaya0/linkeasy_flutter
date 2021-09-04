import 'package:flutter/material.dart';

import '../model/colors/colors_model.dart';
import '../style/text_style/text_style_theme_dark.dart';

extension DarkTheme on BuildContext {
  ThemeData get darkTheme => ThemeData(
      appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: ThemeColorsModel.instance.backgroundColorDARK),
      scaffoldBackgroundColor: ThemeColorsModel.instance.backgroundColorDARK,
      textTheme: TextTheme(
          headline1: TextStyleThemeDark.instance.headline1,
          subtitle1: TextStyleThemeDark.instance.subtitle1));
}
