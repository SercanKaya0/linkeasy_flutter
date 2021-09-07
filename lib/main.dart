import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:shortly_flutter/core/FCM/fcm_helper.dart';
import 'package:shortly_flutter/core/google/admob_helper.dart';
import 'package:shortly_flutter/core/hive/hive_helper.dart';
import 'app/global/get_it/get_it.dart';
import 'core/localization/helper/translation_helper.dart';
import 'platform_sensitive_main.dart';

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // * Çoklu dil seçeneği initialize fonktionu -> EasyLocalization paketi
  await TranstlationsHelper.instance.translationsInitialize();
  // * Dependcy Injection -> Get it Paketi
  setupGetIt();
  // * Phone Local Repository Initialize -> Hive Package
  await HiveHelper.instance.initHiveFlutter();
  // * Firabase initialize
  await Firebase.initializeApp();

  // * Firabase Notification Permissions
  await FirebaseCloudMessageHelper.instance.requestPermission();
  // * Firabase Notification background Handle
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  // * google admob initialize


  runApp(EasyLocalization(
      child: PlatformSensitiveMain(),
      supportedLocales: TranstlationsHelper.instance.supoortedLocales,
      path: TranstlationsHelper.instance.localizationPath));
}/*
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // * Kullanılan platforma göre page builder eder.
    return PlatformSensitiveMain();
  }
*/


