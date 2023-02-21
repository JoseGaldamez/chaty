import 'package:chaty/src/themes/app_colors.dart';
import 'package:chaty/src/widgets/login_form/login_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: -100,
          left: -100,
          child: Container(
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.all(30),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: AppColors.primaryColor),
            child: const Text(
              "Login",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ),
        ),
        const SizedBox(width: double.infinity, child: LoginForm()),
      ],
    ));
  }
}