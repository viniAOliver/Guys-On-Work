import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guys_on_work/controllers/general_controller.dart';
import 'package:guys_on_work/themes/dark_theme.dart';

class MyField extends StatelessWidget {
  /// return the type of FieMyField who will be called
  final int? type;
  final TextInputType? keyboardType;
  final String title;
  final String? subtitle;
  final bool? isPassword;
  final TextEditingController? controller;

  /// Types of FieMyFields:
  /// 0: Standard FieMyField
  /// 1: Login FieMyField
  MyField({
    super.key,
    this.type,
    this.keyboardType,
    required this.title,
    this.subtitle,
    this.isPassword,
    this.controller,
  });

  final GeneralController _generalController = Get.find<GeneralController>();

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case 1:
        return _loginField(context);
      default:
        return _standardField(context);
    }
  }

  // standard field
  _standardField(BuildContext context) {}

  // field for the login
  _loginField(BuildContext context) {
    return SizedBox(
      width: _generalController.screenWidth(context) * 0.7,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: MyDarkTheme.colorPalette.primary,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: MyDarkTheme.colorPalette.onPrimary.withOpacity(0.5),
            width: 3,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: _generalController.screenWidth(context) * 0.02),
          child: TextFormField(
            controller: controller,
            obscureText: isPassword ?? false,
            cursorColor: MyDarkTheme.colorPalette.secondary,
            keyboardType: keyboardType,
            style: TextStyle(
              color: MyDarkTheme.colorPalette.onPrimary,
            ),
            decoration: InputDecoration(
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              labelStyle: TextStyle(
                color: MyDarkTheme.colorPalette.onPrimary,
                fontWeight: FontWeight.normal,
                fontSize: 18,
              ),
              labelText: title,
              floatingLabelStyle: const TextStyle(
                color: Colors.transparent,
              ),
              hintText: subtitle,
              hintStyle: TextStyle(
                color: MyDarkTheme.colorPalette.onPrimary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
