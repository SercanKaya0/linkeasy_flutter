import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SVGPicturesHelper {
  static Widget getSVGPictureAssets({required String svgName}) {
    return SvgPicture.asset(
      "assets/images/$svgName.svg",
      fit: BoxFit.cover,
    );
  }
}
