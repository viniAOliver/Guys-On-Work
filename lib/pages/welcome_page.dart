import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guys_on_work/controllers/general_controller.dart';
import 'package:guys_on_work/themes/main_theme.dart';
import 'package:guys_on_work/widgets/buttons_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final GeneralController _generalController = Get.find<GeneralController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: Center(
        child: Stack(
          children: [
            _backgroundImage(),
            Column(
              children: [
                const Spacer(flex: 2),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _title(context),
                    _subTitle(context),
                  ],
                ),
                const Spacer(flex: 6),
                Center(child: _loginButton(context)),
                const Spacer(flex: 1),
              ],
            ),
          ],
        ),
      ),
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
              sigmaX: 1,
              sigmaY: 1,
              tileMode: TileMode.clamp,
            ),
            child: Image.asset(
              'assets/images/welcome_background.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox.expand(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.black38,
            ),
          ),
        )
      ],
    );
  }

  // section resposible for the title
  _title(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: _generalController.screenWidth(context) * 0.1,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          textAlign: TextAlign.justify,
          'Guys\nOn\nWork'.toUpperCase(),
          style: TextStyle(
            fontFamily: 'Anurati',
            color: Colors.white,
            fontSize: _generalController.screenHeight(context) * 0.07,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }

  _subTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: _generalController.screenWidth(context) * 0.11,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Bem vindo!\nEntre e confira os status.',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Sora',
            fontSize: _generalController.screenHeight(context) * 0.025,
          ),
        ),
      ),
    );
  }

  // // field that contains the email
  // _emailField() {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 12),
  //     child: MyField(
  //       type: 1,
  //       title: "Codename",
  //       subtitle: "Type you codename",
  //       keyboardType: TextInputType.emailAddress,
  //       controller: _loginController.emailLogin.value,
  //     ),
  //   );
  // }

  // // field that contains the password
  // _passwordField() {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 12),
  //     child: MyField(
  //       type: 1,
  //       title: "Password",
  //       subtitle: "What's your password?",
  //       // isPassword: _loginController.visiblePassword.value
  //       isPassword: true,
  //       controller: _loginController.passwordLogin.value,
  //     ),
  //   );
  // }

  // // page to reset the password
  // _forgotPassword(BuildContext context) {
  //   return Padding(
  //     padding: EdgeInsets.symmetric(
  //         horizontal: _generalController.screenWidth(context) * 0.12),
  //     child: MyTextButton(
  //       text: 'Forgot you password?',
  //       textColor: MyTheme.colorPalette.secondary,
  //     ),
  //   );
  // }

  // button that navigate to the forward page to the type of user
  _loginButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: MyButton(
        type: 2,
        text: 'Get in',
        icon: Icons.login_rounded,
        gradientColors: MyTheme.primaryGradient,
        secondColor: Colors.white,
        onTouch: () => Navigator.of(context).pushNamed("/homePage"),
      ),
    );
  }
}
