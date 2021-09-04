import 'dart:io';

import 'package:flutter/material.dart';

abstract class PlatformSensitiveStatefullWidget<T extends StatefulWidget>
    extends State<T> {

  Widget isAndroid(BuildContext context);
  Widget isFuchsia(BuildContext context);
  Widget isIOS(BuildContext context);
  Widget isLinux(BuildContext context);
  Widget isWeb(BuildContext context);
  Widget isMacOS(BuildContext context);
  Widget isWindows(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return isAndroid(context);
    } else if (Platform.isFuchsia) {
      return isFuchsia(context);
    } else if (Platform.isIOS) {
      return isIOS(context);
    } else if (Platform.isLinux) {
      return isLinux(context);
    } else if (Platform.isMacOS) {
      return isMacOS(context);
    } else if (Platform.isWindows) {
      return isWindows(context);
    } else {
      return isWeb(context);
    }
  }
}
