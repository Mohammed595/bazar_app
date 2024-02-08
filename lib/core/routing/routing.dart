import 'package:bazar_app/core/feature/auth/ui/screens/sign_up_screen.dart';
import 'package:bazar_app/core/feature/on_boarding/ui/screens/splash_screen.dart';
import 'package:bazar_app/core/feature/on_boarding/ui/screens/start_control_page.dart';
import 'package:bazar_app/core/routing/routers.dart';
import 'package:bazar_app/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoutes(RouteSettings x) {
    switch (x.name) {
      case Routers.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());

      case Routers.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case Routers.startControlScreen:
        return MaterialPageRoute(
            builder: (context) => const StartControlPage());
      case Routers.signUpScreen:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
      default:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
    }
  }
}
