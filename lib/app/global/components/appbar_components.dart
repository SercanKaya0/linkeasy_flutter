import 'package:flutter/material.dart';
import 'package:shortly_flutter/app/global/components/app_logo_image_components.dart';


// * Uygulamada gösterilen scaffold appbarın geldiği widget.
class AppBarComponents {
  static PreferredSizeWidget appBarWidget() =>
      AppBar(title: AppLogoComponents(), automaticallyImplyLeading: false);
}
