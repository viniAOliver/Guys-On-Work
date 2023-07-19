import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/general_controller.dart';
import '../themes/main_theme.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String? title;
  const MyAppBar({
    super.key,
    this.title,
  });

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  final GeneralController _generalController = Get.find<GeneralController>();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: MyTheme.colorPalette.onPrimary.withOpacity(0.6),
      title: Text(
        widget.title ?? '',
        style: TextStyle(
          color: MyTheme.colorPalette.tertiary,
          fontWeight: FontWeight.bold,
          fontSize: _generalController.screenHeight(context) * 0.04,
          fontFamily: 'Sora',
        ),
      ),
      toolbarHeight: _generalController.screenHeight(context) * 0.08,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      elevation: 5,
      backgroundColor: MyTheme.colorPalette.onPrimaryContainer,
      leading: IconButton(
        alignment: Alignment.center,
        icon: Icon(
          Icons.arrow_back_ios,
          color: MyTheme.colorPalette.secondary,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
