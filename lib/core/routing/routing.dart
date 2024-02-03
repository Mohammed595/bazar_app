import 'package:bazar_app/core/feature/on_boarding/ui/screens/splash_screen.dart';
import 'package:bazar_app/core/feature/on_boarding/ui/screens/start_control_page.dart';
import 'package:bazar_app/core/routing/routers.dart';
import 'package:bazar_app/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoutes(RouteSettings x) {
    switch (x.name) {
      case Routers.splashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());

      case Routers.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case Routers.startControlScreen:
        return MaterialPageRoute(builder: (context) => StartControlPage());
      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}
