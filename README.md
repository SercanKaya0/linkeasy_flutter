# Shortly Flutter 

## Specification
- Dark Mode
- Multi Language
- Responsive 
- Easy manageable route
- Core Files
- Global Components
- Dependcy Injections - Get It
- Scalable Code 
- State Management -> Mobx

## installation 
```bash
flutter pub get
```

## Usage -> Core
```bash

## Localiztaion

 'It is a file that can be moved to the folder of the desired application and localized. The easy_localization package is used, and after the necessary settings are made, it is sufficient to wrap the text to be translated with the widget in the folder.'

Example:
  TranslationText(text: "home.title"),
## navigation
Navigasyon işlemlerini kolay hale getiren ve uygulama farketmeksizin kullanılabilen core dosyasıdır. 

Example :
       Navigation.pushNamed(root: Routes.onboard);

## platform_design

'It is the build that runs the builder based on the platform type.'

Example : 

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
## screen_size
It has an extension written to Buildcontext that measures screen width and height.
if you leave height blank it will multiply the width of the screen by 1
Example:
context.screenHeight(height: buttonHeight),


```

## Usage -> Routes
```bash
class Routes {
  static const home = "/";
  static const welcome = "/welcome_screem";

  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return _materialPageRoute(WelcomeScreen());
      case welcome:
        return _materialPageRoute(WelcomeScreen());

      default:
        return _materialPageRoute(Text("error"));
    }
  }

  static MaterialPageRoute<dynamic> _materialPageRoute(Widget page) {
    return MaterialPageRoute<dynamic>(builder: (_) => page);
  }
}
```

