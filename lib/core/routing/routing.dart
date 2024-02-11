import 'package:bazar_app/core/feature/auth/ui/screens/congratulation_screen.dart';
import 'package:bazar_app/core/feature/auth/ui/screens/sign_in_screen.dart';
import 'package:bazar_app/core/feature/auth/ui/screens/sign_up_screen.dart';
import 'package:bazar_app/core/feature/home_page/ui/screens/home_page.dart';
import 'package:bazar_app/splash_screen.dart';
import 'package:bazar_app/core/feature/on_boarding/ui/screens/start_control_page.dart';
import 'package:bazar_app/core/routing/routers.dart';
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
      case Routers.signInScreen:
        return MaterialPageRoute(builder: (context) => const SignInScreen());
      case Routers.congratulationScreen:
        return MaterialPageRoute(
            builder: (context) => const CongratulationScreen());
      default:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
    }
  }
}
