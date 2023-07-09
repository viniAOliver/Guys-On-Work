import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guys_on_work/controllers/general_controller.dart';
import '../themes/main_theme.dart';

class MyHomeCard extends StatelessWidget {
  /// Select the type of cards that will returns
  /// 1 - Full Screen Card
  /// 2 - Half Screen Card
  final int type;
  final String title;
  final Color? colorTitle;
  final Gradient backGradient;
  final String? pathImage;
  MyHomeCard({
    super.key,
    required this.type,
    required this.title,
    this.pathImage,
    required this.backGradient,
    this.colorTitle,
  });

  final GeneralController _generalController = Get.find<GeneralController>();

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case 1:
        return _fullCard(context);
      case 2:
        return _halfVerticalCard(context);
      case 3:
        return _halfHorizontalCard(context);
      default:
        return _fullCard(context);
    }
  }

  _fullCard(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(
          left: _generalController.screenWidth(context) * 0.04,
          right: _generalController.screenWidth(context) * 0.04,
          top: _generalController.screenWidth(context) * 0.04,
          bottom: _generalController.screenWidth(context) * 0.02,
        ),
        child: Container(
          height: _generalController.screenHeight(context) * 0.4,
          width: _generalController.screenWidth(context),
          decoration: BoxDecoration(
            color: MyTheme.colorPalette.onPrimaryContainer.withOpacity(0.75),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 4,
                blurRadius: 4,
                offset: const Offset(2, 6), // changes position of shadow
              ),
            ],
          ),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: _generalController.screenHeight(context) * 0.4,
                    width: _generalController.screenWidth(context) * 0.45,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: backGradient,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: _generalController.screenHeight(context) *
                                  0.03,
                              top: _generalController.screenHeight(context) *
                                  0.025,
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: DecoratedBox(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(45),
                                    topRight: Radius.circular(45),
                                    bottomLeft: Radius.circular(45),
                                    bottomRight: Radius.circular(45),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 6,
                                      blurStyle: BlurStyle.normal,
                                      color: Colors.black12,
                                      offset: Offset(0, 10),
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/images/radar.png',
                                  height:
                                      _generalController.screenHeight(context) *
                                          0.12,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: _generalController.screenHeight(context) *
                                  0.02,
                              bottom: _generalController.screenHeight(context) *
                                  0.02,
                            ),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                textAlign: TextAlign.justify,
                                title,
                                style: TextStyle(
                                  color: colorTitle ??
                                      MyTheme.colorPalette.onPrimaryContainer,
                                  fontSize:
                                      _generalController.screenWidth(context) *
                                          0.07,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.8,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      height: _generalController.screenHeight(context) * 0.09,
                      width: _generalController.screenWidth(context) * 0.25,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: MyTheme.colorPalette.tertiary.withOpacity(0.5),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: colorTitle ??
                                  MyTheme.colorPalette.onPrimaryContainer,
                              size: _generalController.screenWidth(context) *
                                  0.08,
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: const Offset(5, 2),
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    pathImage ?? "",
                    height: _generalController.screenWidth(context) * 0.65,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _halfHorizontalCard(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(
          left: _generalController.screenWidth(context) * 0.04,
          right: _generalController.screenWidth(context) * 0.04,
          top: _generalController.screenWidth(context) * 0.04,
          bottom: _generalController.screenWidth(context) * 0.02,
        ),
        child: Container(
          height: _generalController.screenHeight(context) * 0.25,
          width: _generalController.screenWidth(context),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: _generalController.screenHeight(context) * 0.18,
                  width: _generalController.screenWidth(context) * 0.92,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: backGradient,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 4,
                          blurRadius: 4,
                          offset:
                              const Offset(2, 6), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: _generalController.screenHeight(context) * 0.02,
                        bottom: _generalController.screenHeight(context) * 0.02,
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          textAlign: TextAlign.justify,
                          title,
                          style: TextStyle(
                            color: colorTitle ??
                                MyTheme.colorPalette.onPrimaryContainer,
                            fontSize:
                                _generalController.screenWidth(context) * 0.07,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.8,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  right: 10,
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    pathImage ?? "",
                    height: _generalController.screenWidth(context) * 0.5,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: _generalController.screenWidth(context) * 0.03,
                    bottom: _generalController.screenWidth(context) * 0.03,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: colorTitle?.withOpacity(0.8) ??
                          MyTheme.colorPalette.onPrimaryContainer
                              .withOpacity(0.8),
                      size: _generalController.screenWidth(context) * 0.09,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(5, 2),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _halfVerticalCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        _generalController.screenWidth(context) * 0.02,
      ),
      child: Container(
        height: _generalController.screenHeight(context) * 0.3,
        width: _generalController.screenWidth(context) * 0.6,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                height: _generalController.screenHeight(context) * 0.25,
                width: _generalController.screenWidth(context) * 0.5,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: backGradient,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 4,
                        blurRadius: 4,
                        offset:
                            const Offset(2, 6), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          right:
                              _generalController.screenHeight(context) * 0.02,
                          top: _generalController.screenHeight(context) * 0.02,
                        ),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            textAlign: TextAlign.end,
                            title,
                            style: TextStyle(
                              color: colorTitle ??
                                  MyTheme.colorPalette.onPrimaryContainer,
                              fontSize:
                                  _generalController.screenWidth(context) *
                                      0.07,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.8,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right:
                              _generalController.screenHeight(context) * 0.02,
                          bottom:
                              _generalController.screenHeight(context) * 0.02,
                        ),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: colorTitle ??
                                  MyTheme.colorPalette.onPrimaryContainer,
                              size:
                                  _generalController.screenWidth(context) * 0.1,
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: const Offset(5, 2),
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: _generalController.screenHeight(context) * 0.01,
                  bottom: _generalController.screenHeight(context) * 0.01,
                ),
                child: Image.asset(
                  pathImage ?? "",
                  height: _generalController.screenWidth(context) * 0.6,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
