import 'package:flutter/material.dart';
import 'package:guys_on_work/pages/login_page.dart';

class Routes {
  /// this var set the first screen that will show up
  static String initialRoute = "/loginPage";

  // list with all the routes
  static Map<String, Widget Function(BuildContext)> routes =
      <String, Widget Function(BuildContext)>{
    /// equivalent route to login page
    "/loginPage": (context) => const LoginPage(),
  };
}
