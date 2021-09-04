import 'package:flutter/material.dart';
import 'package:shortly_flutter/app/theme/style/button_style/button_style_theme_light.dart';

import '../model/colors/colors_model.dart';
import '../style/text_style/text_style_theme_light.dart';

extension LightTheme on BuildContext {
  ThemeData get lightTheme => ThemeData(
        appBarTheme: AppBarTheme(
            elevation: 0,
            centerTitle: true,
            backgroundColor: ThemeColorsModel.instance.backgroundColorLIGHT),
        scaffoldBackgroundColor: ThemeColorsModel.instance.backgroundColorLIGHT,
        textTheme: TextTheme(
            headline1: TextStyleThemeLight.instance.headline1,
            headline2: TextStyleThemeLight.instance.headline2,
            subtitle1: TextStyleThemeLight.instance.subtitle1),
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyleThemeLight.instance.textButtonStyle),
      );
}
