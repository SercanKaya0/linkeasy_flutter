import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shortly_flutter/core/hive/hive_helper.dart';

import 'app/global/get_it/get_it.dart';
import 'core/localization/helper/translation_helper.dart';
import 'platform_sensitive_main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // * Çoklu dil seçeneği initialize fonktionu -> EasyLocalization paketi
  await TranstlationsHelper.instance.translationsInitialize();
  // * Dependcy Injection -> Get it Paketi
  setupGetIt();
  // * Phone Local Repository Initialize -> Hive Package
  await HiveHelper.instance.initHiveFlutter();

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
