import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TranstlationsHelper {
  static final TranstlationsHelper instance = TranstlationsHelper();

  // * Localization Path
  final String localizationPath = "assets/translations";
  // * Locale Languge
  final supoortedLocales = [Locale("tr"), Locale("en")];

  // * Initialize
  Future<void> translationsInitialize() async {
    await EasyLocalization.ensureInitialized();
  }
}
