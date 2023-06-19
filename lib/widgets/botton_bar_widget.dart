import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guys_on_work/controllers/general_controller.dart';
import '../themes/main_theme.dart';

class MyBottomNavigationBar extends StatelessWidget {
  MyBottomNavigationBar({super.key});

  final GeneralController _generalController = Get.find<GeneralController>();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: MyTheme.colorPalette.secondary.withOpacity(0.9),
      selectedItemColor: MyTheme.colorPalette.tertiary,
      unselectedFontSize: _generalController.screenHeight(context) * 0.02,
      selectedFontSize: _generalController.screenHeight(context) * 0.015,
      iconSize: _generalController.screenHeight(context) * 0.035,
      type: BottomNavigationBarType.shifting,
      backgroundColor: MyTheme.colorPalette.onPrimaryContainer,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.groups_rounded),
          label: 'Team',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: 'Profile',
        ),
      ],
    );
  }
}
