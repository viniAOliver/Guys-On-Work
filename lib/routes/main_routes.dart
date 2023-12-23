import 'package:flutter/widgets.dart';
import 'package:guys_on_work/modules/initial_pages/initial_pages_routes.dart';

class MainRoutes {
  /// Constructor that adds the routes of the application.
  MainRoutes() {
    generalRoutes.addAll(InitialPagesRoutes.routes);
  }

  /// Variable that stores the initial route of the application.
  static const String initialRoute = '/';

  /// Variable that stores the list of routes of the application.
  Map<String, Widget Function(BuildContext)> generalRoutes = {
  };
}
