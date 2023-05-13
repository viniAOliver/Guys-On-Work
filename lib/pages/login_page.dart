import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guys_on_work/controllers/general_controller.dart';
import 'package:guys_on_work/controllers/login_controller.dart';
import 'package:guys_on_work/widgets/buttons_widget.dart';
import 'package:guys_on_work/widgets/fields_widget.dart';
import 'package:guys_on_work/widgets/text_buttons_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GeneralController _generalController = Get.find<GeneralController>();
  final LoginController _loginController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _logo(context),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                children: [
                  _emailField(),
                  _passwordField(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: _forgotPassword(context),
                  )
                ],
              ),
            ),
            _loginButton(context),
          ],
        ),
      ),
    );
  }

  // section resposible for the logo
  _logo(BuildContext context) {
    return Icon(
      Icons.power_settings_new_rounded,
      size: _generalController.screenHeight(context) * 0.15,
      color: Colors.deepPurple.shade200,
    );
  }

  // field that contains the email
  _emailField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: MyField(
        type: 1,
        title: "E-mail",
        subtitle: "Digite seu e-mail",
        keyboardType: TextInputType.emailAddress,
        controller: _loginController.emailLogin.value,
      ),
    );
  }

  // field that contains the password
  _passwordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: MyField(
        type: 1,
        title: "Senha",
        subtitle: "Digite sua senha",
        // isPassword: _loginController.visiblePassword.value
        isPassword: true,
        controller: _loginController.passwordLogin.value,
      ),
    );
  }

  // page to reset the password
  _forgotPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: _generalController.screenWidth(context) * 0.15),
      child: MyTextButton(
        text: 'Esqueceu a senha?',
        textColor: Colors.deepPurple.shade500,
      ),
    );
  }

  // button that navigate to the forward page to the type of user
  _loginButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: MyButton(
        type: 1,
        text: 'Entrar',
        icon: Icons.login_rounded,
        buttonColor: Colors.deepPurple.shade600,
        secondColor: Colors.white,
      ),
    );
  }
}
