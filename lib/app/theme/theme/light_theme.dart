import 'package:flutter/material.dart';

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
          subtitle1: TextStyleThemeLight.instance.subtitle1));
}
