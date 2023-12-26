import 'package:flutter/material.dart';
import 'package:guys_on_work/modules/initial_pages/splash_page/screens/splash_screen.dart';
import 'package:guys_on_work/modules/initial_pages/welcome_page/screens/welcome_screen.dart';

class InitialPagesRoutes {
  static Map<String, Widget Function(BuildContext)> routes =
      <String, WidgetBuilder>{
    // Route to initial splash screen.
    '/': (context) => const SplashScreen(),

    // Route to welcome screen.
    '/welcome': (context) => const WelcomeScreen(),
  };
}
