import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:guys_on_work/themes/main_theme.dart';
import 'package:guys_on_work/widgets/app_bar_widget.dart';
import 'package:guys_on_work/widgets/botton_bar_widget.dart';
import 'package:guys_on_work/widgets/home_card_widget.dart';
import 'package:just_audio/just_audio.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AudioPlayer _homePlayer;

  @override
  void initState() {
    super.initState();
    _homePlayer = AudioPlayer();
    _playAudio();
  }

  Future<void> _playAudio() async {
    await _homePlayer.setAsset('assets/music/dbzbt3_soundtrack.mp3');
    await _homePlayer.setLoopMode(LoopMode.all);
    await _homePlayer.setVolume(0.2);
    await _homePlayer.play();
  }

  @override
  void dispose() {
    super.dispose();
    _homePlayer.dispose();
  }

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
                    backGradient: MyTheme.dbGradient,
                  ),
                  MyHomeCard(
                    type: 3,
                    title: "Team\nTasks",
                    pathImage: 'assets/images/bulma.png',
                    backGradient: MyTheme.dbGradient,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyHomeCard(
                          type: 2,
                          title: "Space\nOne",
                          pathImage: "assets/images/frieza.png",
                          backGradient: MyTheme.friezaGradient,
                          colorTitle: MyTheme.friezaPrimaty,
                        ),
                        MyHomeCard(
                          type: 2,
                          title: "Space\nTwo",
                          pathImage: "assets/images/cell.png",
                          backGradient: MyTheme.cellGradient,
                          colorTitle: MyTheme.cellPrimaty,
                        ),
                        MyHomeCard(
                          type: 2,
                          title: "Space\nThree",
                          pathImage: "assets/images/sbuu.png",
                          backGradient: MyTheme.booGradient,
                          colorTitle: MyTheme.booPrimaty,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(audioPlayer: _homePlayer),
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
