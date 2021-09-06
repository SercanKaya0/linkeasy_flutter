import 'package:flutter/material.dart';

import '../../../core/images/images_helper.dart';
import '../../../core/screen_size/screen_size_helper.dart';

// * Uygulama boyunca gösterilen logonun geldiği widgettır.
class AppLogoComponents extends StatelessWidget {
  const AppLogoComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // * Assets -> images dosyasında logo.svg resmini çeker.
    return ImagesHelper.getAssetImage(
        imageName: "app-logo", width: context.screenWidht(width: 0.6));
  }
}
