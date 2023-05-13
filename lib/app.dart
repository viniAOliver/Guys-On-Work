import 'package:flutter/material.dart';
import 'package:guys_on_work/routes/general_routes.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // disable the debug banner
      debugShowCheckedModeBanner: false,
      // set the title that will appears in the project
      title: 'Guys On Work',
      // call the first route who will be called
      initialRoute: Routes.initialRoute,
      // calls all the routes of the application
      routes: Routes.routes,
    );
  }
}
