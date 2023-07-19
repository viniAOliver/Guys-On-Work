import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guys_on_work/controllers/general_controller.dart';
import 'package:just_audio/just_audio.dart';
import '../themes/main_theme.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final AudioPlayer? audioPlayer;
  MyBottomNavigationBar({super.key, this.audioPlayer});

  final GeneralController _generalController = Get.find<GeneralController>();
  final RxInt currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        currentIndex: currentIndex.value,
        onTap: (value) {
          audioPlayer?.stop();
          currentIndex.value = value;
          if (currentIndex.value == 0) {
            Navigator.of(context).pushNamed('');
          } else if (currentIndex.value == 1) {
            Navigator.of(context).pushNamed(
              '/WelcomePage',
              arguments: currentIndex.value,
            );
          } else if (currentIndex.value == 2) {
            Navigator.of(context).pushNamed('');
          }
        },
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
      ),
    );
  }
}
