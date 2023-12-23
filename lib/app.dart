import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guys_on_work/design/app_theme.dart';
import 'package:guys_on_work/routes/main_routes.dart';

class GowApp extends StatefulWidget {
  const GowApp({super.key});

  @override
  State<GowApp> createState() => _GowAppState();
}

class _GowAppState extends State<GowApp> with WidgetsBindingObserver {
  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      title: 'Guys on Work',
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      initialRoute: MainRoutes.initialRoute,
      routes: MainRoutes().generalRoutes,
      supportedLocales: const [
        Locale('pt', 'BR'),
        Locale('en', 'US'),
      ],
    );
  }
}
