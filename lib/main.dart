import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guys_on_work/app.dart';
import 'package:guys_on_work/controllers/general_controller.dart';
import 'package:guys_on_work/controllers/login_controller.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  // calling the controllers
  Get.lazyPut(() => GeneralController());
  Get.lazyPut(() => LoginController());

  // Make sure that all widgets be load correctly
  WidgetsFlutterBinding.ensureInitialized();

  // running the app
  if (GetPlatform.isAndroid) {
    runApp(const MainApp());
  } else {
    runApp(
      DevicePreview(
        builder: (context) => const MainApp(),
        enabled: !kReleaseMode,
      ),
    );
  }
}
