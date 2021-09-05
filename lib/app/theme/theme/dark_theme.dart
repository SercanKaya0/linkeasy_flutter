import 'package:flutter/material.dart';
import 'package:shortly_flutter/app/theme/style/button_style/button_style_theme_dark.dart';
import 'package:shortly_flutter/app/theme/style/theme_data/input_decoration/input_decoration_theme_dark.dart';

import '../model/colors/colors_model.dart';
import '../style/text_style/text_style_theme_dark.dart';

extension DarkTheme on BuildContext {
  ThemeData get darkTheme => ThemeData(
        inputDecorationTheme:
            InputDecorationThemeDark.instance.inputDecorationTheme,
        appBarTheme: AppBarTheme(
            elevation: 0,
            centerTitle: true,
            backgroundColor: ThemeColorsModel.instance.backgroundColorDARK),
        scaffoldBackgroundColor: ThemeColorsModel.instance.backgroundColorDARK,
        textTheme: TextTheme(
            headline1: TextStyleThemeDark.instance.headline1,
            headline2: TextStyleThemeDark.instance.headline2,
            headline3: TextStyleThemeDark.instance.headline3,

            subtitle1: TextStyleThemeDark.instance.subtitle1),
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyleThemeDark.instance.textButtonStyle),
      );
}
