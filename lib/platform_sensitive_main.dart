import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shortly_flutter/app/global/routes/routes.dart';
import 'package:shortly_flutter/core/navigation/navigation_helper.dart';

import 'app/screens/welcome/screens/welcome_screen.dart';
import 'app/theme/theme/dark_theme.dart';
import 'app/theme/theme/light_theme.dart';
import 'core/platform_design/platform_sensitive_stateless_screen.dart';

class PlatformSensitiveMain extends PlatformSensitiveWidget {
  @override
  Widget isAndroid(BuildContext context) {
    return MaterialApp(
      title: 'Shortly',
      onGenerateRoute: Routes.onGenerateRoutes,
      debugShowCheckedModeBanner: false,
      navigatorKey: Navigation.navigationKey,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.deviceLocale,
      theme: context.lightTheme,
      darkTheme: context.darkTheme,
      initialRoute: Routes.home,
      home: WelcomeScreen(),
    );
  }

  @override
  Widget isFuchsia(BuildContext context) {
    return MaterialApp(
      title: 'Shortly',
      onGenerateRoute: Routes.onGenerateRoutes,
      debugShowCheckedModeBanner: false,
      navigatorKey: Navigation.navigationKey,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.deviceLocale,
      theme: context.lightTheme,
      darkTheme: context.darkTheme,
      initialRoute: Routes.home,
      home: WelcomeScreen(),
    );
  }

  @override
  Widget isIOS(BuildContext context) {
    return MaterialApp(
      title: 'Shortly',
      onGenerateRoute: Routes.onGenerateRoutes,
      debugShowCheckedModeBanner: false,
      navigatorKey: Navigation.navigationKey,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.deviceLocale,
      theme: context.lightTheme,
      darkTheme: context.darkTheme,
      initialRoute: Routes.home,
      home: WelcomeScreen(),
    );
  }

  @override
  Widget isLinux(BuildContext context) {
    return MaterialApp(
      title: 'Shortly',
      onGenerateRoute: Routes.onGenerateRoutes,
      debugShowCheckedModeBanner: false,
      navigatorKey: Navigation.navigationKey,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.deviceLocale,
      theme: context.lightTheme,
      darkTheme: context.darkTheme,
      initialRoute: Routes.home,
      home: WelcomeScreen(),
    );
  }

  @override
  Widget isMacOS(BuildContext context) {
    return MaterialApp(
      title: 'Shortly',
      onGenerateRoute: Routes.onGenerateRoutes,
      debugShowCheckedModeBanner: false,
      navigatorKey: Navigation.navigationKey,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.deviceLocale,
      theme: context.lightTheme,
      darkTheme: context.darkTheme,
      initialRoute: Routes.home,
      home: WelcomeScreen(),
    );
  }

  @override
  Widget isWeb(BuildContext context) {
    return MaterialApp(
      title: 'Shortly',
      onGenerateRoute: Routes.onGenerateRoutes,
      debugShowCheckedModeBanner: false,
      navigatorKey: Navigation.navigationKey,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.deviceLocale,
      theme: context.lightTheme,
      darkTheme: context.darkTheme,
      initialRoute: Routes.home,
      home: WelcomeScreen(),
    );
  }

  @override
  Widget isWindows(BuildContext context) {
    return MaterialApp(
      title: 'Shortly',
      onGenerateRoute: Routes.onGenerateRoutes,
      debugShowCheckedModeBanner: false,
      navigatorKey: Navigation.navigationKey,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.deviceLocale,
      theme: context.lightTheme,
      darkTheme: context.darkTheme,
      initialRoute: Routes.home,
      home: WelcomeScreen(),
    );
  }
}
