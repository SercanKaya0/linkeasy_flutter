import 'package:flutter/material.dart';

import '../helpers/svg_pictures_helpers.dart';


// * Uygulama boyunca gösterilen logonun geldiği widgettır.
class AppLogoComponents extends StatelessWidget {
  const AppLogoComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // * Assets -> images dosyasında logo.svg resmini çeker.
    return SVGPicturesHelper.getSVGPictureAssets(svgName: "logo");
  }
}
