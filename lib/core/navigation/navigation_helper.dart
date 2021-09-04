import 'package:flutter/material.dart';

class Navigation {
  static GlobalKey<NavigatorState> navigationKey = GlobalKey();
  static Future<T?>? push<T>({required Widget page}) {
    return navigationKey.currentState?.push(materialPageRoute(page));
  }

  static Future<T?>? pushNamed<T>({required String root, Object? arg}) {
    return navigationKey.currentState?.pushNamed(root, arguments: arg);
  }

  static Future<T?>? pushAndRemoveAll<T>({required Widget page}) {
    return navigationKey.currentState
        ?.pushAndRemoveUntil(materialPageRoute(page), (route) => false);
  }

  static Future<T?>? pushNamedAndRemoveAll<T>(
      {required String root, Object? arg}) {
    return navigationKey.currentState
        ?.pushNamedAndRemoveUntil(root, (route) => false, arguments: arg);
  }

  static Future<T?>? pushReplacementNamed<T>(
      {required String root}) {
    return navigationKey.currentState?.pushReplacementNamed(root);
  }

  static MaterialPageRoute<T> materialPageRoute<T>(Widget page) {
    return MaterialPageRoute<T>(builder: (_) => page);
  }
}
