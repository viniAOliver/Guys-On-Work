import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  Rx<TextEditingController> emailLogin = TextEditingController().obs;
  Rx<TextEditingController> passwordLogin = TextEditingController().obs;
  RxBool visiblePassword = false.obs;

  cleanFields() {
    emailLogin.value.clear();
    passwordLogin.value.clear();
    visiblePassword.value = false;
  }
}
