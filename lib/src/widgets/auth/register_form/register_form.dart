import 'package:chaty/src/themes/app_colors.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _image(context),
        _emailField(),
        _emailField(),
        _passwordField(),
        _signInButton(),
      ],
    );
  }

  Container _signInButton() => Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15)),
            child: const Text("Registrarse")),
      );

  Container _passwordField() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: AppColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: const TextField(
        decoration: InputDecoration(
            hintText: "Contraseña",
            hintStyle: TextStyle(color: AppColors.primaryColor),
            border: InputBorder.none,
            prefixIcon: Icon(Icons.lock, color: AppColors.primaryColor)),
      ),
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
      child: const TextField(
        decoration: InputDecoration(
            hintText: "Correo electrónico",
            hintStyle: TextStyle(color: AppColors.primaryColor),
            border: InputBorder.none,
            prefixIcon: Icon(Icons.email, color: AppColors.primaryColor)),
      ),
    );
  }

  Container _image(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 120.0, bottom: 50.0),
      child: const CircleAvatar(
        radius: 60,
        backgroundColor: AppColors.primaryOpacityColor,
        backgroundImage: AssetImage("lib/src/assets/imgs/user_profile_2.png"),
      ),
    );
  }
}
