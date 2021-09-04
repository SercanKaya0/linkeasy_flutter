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



## Routes 

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

