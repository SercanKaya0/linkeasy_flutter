// ! ROUTES
import 'package:flutter/material.dart';
import 'package:shortly_flutter/app/screens/home_page/screen/homepage_screen.dart';
import 'package:shortly_flutter/app/screens/onboard/screens/onboard_screen.dart';
import 'package:shortly_flutter/app/screens/url_short/screens/url_short_screen.dart';

import 'package:shortly_flutter/app/screens/welcome/screens/welcome_screen.dart';

class Routes {
  static const home = "/";
  static const onboard = "/onboard_screen";
  static const home_screen = "/home_screen";
  static const search_history = "/search_history_screen";

  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return _materialPageRoute(WelcomeScreen());
      case onboard:
        return _materialPageRoute(OnboardScreen());
      case home_screen:
        return _materialPageRoute(HomePageScreens());
      case search_history:
        return _materialPageRoute(OnboardScreen());

      default:
        return _materialPageRoute(Text("error"));
    }
  }

  static MaterialPageRoute<dynamic> _materialPageRoute(Widget page) {
    return MaterialPageRoute<dynamic>(builder: (_) => page);
  }
}
