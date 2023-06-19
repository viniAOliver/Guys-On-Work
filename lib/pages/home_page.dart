import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:guys_on_work/themes/main_theme.dart';
import 'package:guys_on_work/widgets/botton_bar_widget.dart';
import 'package:guys_on_work/widgets/home_card_widget.dart';
import '../widgets/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: MyTheme.colorPalette.secondary,
      appBar: const MyAppBar(title: 'Home'),
      body: SafeArea(
        child: Stack(
          children: [
            _backgroundImage(),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyHomeCard(
                    type: 1,
                    title: "Your's\nTasks",
                    pathImage: 'assets/images/goku_training.png',
                  ),
                  MyHomeCard(
                    type: 3,
                    title: "Team\nTasks",
                    pathImage: 'assets/images/bulma.png',
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyHomeCard(
                          type: 2,
                          title: "Space\nOne",
                          pathImage: "assets/images/cell.png",
                        ),
                        MyHomeCard(type: 2, title: "Space\nTwo", pathImage: ""),
                        MyHomeCard(
                            type: 2, title: "Space\nThree", pathImage: ""),
                        MyHomeCard(
                            type: 2, title: "Space\nFour", pathImage: ""),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }

  // that returns the image that will be set as background
  _backgroundImage() {
    return Stack(
      fit: StackFit.expand,
      children: [
        SizedBox.expand(
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: 3,
              sigmaY: 3,
              tileMode: TileMode.clamp,
            ),
            child: Image.asset(
              'assets/images/home_background.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox.expand(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white10,
            ),
          ),
        )
      ],
    );
  }
}
