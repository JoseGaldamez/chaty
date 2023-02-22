import 'package:chaty/src/screens/auth/login/login_controller.dart';
import 'package:chaty/src/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  LoginController loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _image(context),
        _emailField(),
        _passwordField(),
        _signInButton(),
        _dontHaveAccount()
      ],
    );
  }

  Container _image(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 50.0, bottom: MediaQuery.of(context).size.height * 0.2),
      child: Image.asset("lib/src/assets/imgs/delivery.png",
          width: 200, height: 200),
    );
  }

  Container _emailField() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: AppColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: TextField(
        controller: loginController.emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
            hintText: "Correo electrónico",
            hintStyle: TextStyle(color: AppColors.primaryColor),
            border: InputBorder.none,
            prefixIcon: Icon(Icons.email, color: AppColors.primaryColor)),
      ),
    );
  }

  Container _passwordField() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: AppColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: TextField(
        controller: loginController.passwordController,
        keyboardType: TextInputType.visiblePassword,
        decoration: const InputDecoration(
            hintText: "Contraseña",
            hintStyle: TextStyle(color: AppColors.primaryColor),
            border: InputBorder.none,
            prefixIcon: Icon(Icons.lock, color: AppColors.primaryColor)),
      ),
    );
  }

  Container _signInButton() => Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        child: ElevatedButton(
            onPressed: () {
              loginController.login();
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15)),
            child: const Text("Ingresar")),
      );

  Row _dontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text("¿No tienes cuenta?",
            style: TextStyle(color: AppColors.primaryColor)),
        TextButton(
          onPressed: () {
            Get.toNamed("/register");
          },
          child: const Text("Regístrate",
              style: TextStyle(
                  color: AppColors.primaryColor, fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}
