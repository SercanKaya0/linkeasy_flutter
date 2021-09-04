import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'app/screens/onboard/screens/onboard_screen.dart';
import 'app/theme/theme/dark_theme.dart';
import 'app/theme/theme/light_theme.dart';
import 'core/localization/helper/translation_helper.dart';

void main() {
  runApp(EasyLocalization(
      child: MyApp(),
      supportedLocales: TranstlationsHelper.instance.supoortedLocales,
      path: TranstlationsHelper.instance.localizationPath));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shortly',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.deviceLocale,
      theme: context.lightTheme,
      darkTheme: context.darkTheme,
      home: OnboardScreen(),
    );
  }
}
