import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeneralController extends GetxController {
  /// used when the application is loading
  final RxBool? loading = false.obs;

  /// return the full screen width
  screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// return the full screen height
  screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
