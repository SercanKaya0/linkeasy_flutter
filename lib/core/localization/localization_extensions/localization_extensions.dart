import 'package:easy_localization/easy_localization.dart';

extension LocalizationExtension on String {
  String get locale => this.tr();
}
