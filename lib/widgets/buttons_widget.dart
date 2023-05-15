import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guys_on_work/controllers/general_controller.dart';

class MyButton extends StatelessWidget {
  final int? type;
  final Color? buttonColor;
  final Gradient? gradientColors;
  final String text;
  final Color? secondColor;
  final IconData? icon;
  final Function()? onTouch;

  MyButton({
    super.key,
    this.type,
    this.buttonColor,
    this.secondColor,
    required this.text,
    this.icon,
    this.onTouch,
    this.gradientColors,
  });

  final GeneralController _generalController = Get.find<GeneralController>();

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case 1:
        return _iconButton(context);
      default:
        return _standardButton(context);
    }
  }

  _standardButton(BuildContext context) {
    return SizedBox(
        height: _generalController.screenHeight(context) * 0.06,
        width: _generalController.screenHeight(context) * 0.15,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: gradientColors,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(
              icon,
              color: secondColor,
            ),
            label: Text(
              text,
              style: TextStyle(
                color: secondColor,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              alignment: Alignment.center,
            ),
          ),
        ));
  }

  _iconButton(BuildContext context) {
    return SizedBox(
      height: _generalController.screenHeight(context) * 0.06,
      width: _generalController.screenHeight(context) * 0.15,
      child: ElevatedButton.icon(
        onPressed: _generalController.loading == null
            ? null
            : () {
                onTouch;
              },
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: buttonColor,
        ),
        icon: Icon(
          icon,
          color: secondColor,
        ),
        label: Text(
          text,
          style: TextStyle(color: secondColor),
        ),
      ),
    );
  }
}
