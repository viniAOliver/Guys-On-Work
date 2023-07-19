import 'package:flutter/material.dart';
import 'package:guys_on_work/pages/home_page.dart';
import 'package:guys_on_work/pages/welcome_page.dart';

class Routes {
  /// this var set the first screen that will show up
  static String initialRoute = "/WelcomePage";

  // list with all the routes
  static Map<String, Widget Function(BuildContext)> routes =
      <String, Widget Function(BuildContext)>{
    /// equivalent route to login page
    "/WelcomePage": (context) => const WelcomePage(),

    /// equivalent route to home page
    "/homePage": (context) => const HomePage(),
  };
}
