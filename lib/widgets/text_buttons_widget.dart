import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final int? type;
  final String text;
  final Color textColor;
  final FontWeight? thicknessText;
  final Function()? click;

  const MyTextButton({
    super.key,
    required this.text,
    required this.textColor,
    this.click,
    this.type,
    this.thicknessText,
  });

  @override
  Widget build(BuildContext context) {
    switch (type) {
      default:
        return _standardTextButton(context);
    }
  }

  _standardTextButton(BuildContext context) {
    return TextButton(
      onPressed: click,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
