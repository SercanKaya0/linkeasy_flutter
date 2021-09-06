import 'package:flutter/material.dart';

// ! HELPER
// ! IMAGE
class ImagesHelper {
  static Image getAssetImage(
          {required String imageName,
          double? width = 25,
          double? heigth = 25}) =>
      Image.asset("assets/images/$imageName.png", width: width, height: heigth);
}
