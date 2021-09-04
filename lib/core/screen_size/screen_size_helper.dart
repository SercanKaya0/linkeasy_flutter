import 'package:flutter/material.dart';

extension ScreenSizeExtensions on BuildContext {
  double screenWidht({double? width}) => MediaQuery.of(this).size.width * (width ?? 1);
  double screenHeight({double? height}) => MediaQuery.of(this).size.height * (height ?? 1);

}
