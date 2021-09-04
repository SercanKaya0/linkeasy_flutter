import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/localization/helper/translation_helper.dart';
import 'platform_sensitive_main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await TranstlationsHelper.instance.translationsInitialize();
  runApp(EasyLocalization(
      child: MyApp(),
      supportedLocales: TranstlationsHelper.instance.supoortedLocales,
      path: TranstlationsHelper.instance.localizationPath));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // * Kullanılan platforma göre page builder eder.
    return PlatformSensitiveMain();
  }
}
