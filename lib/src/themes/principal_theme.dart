import 'package:flutter/material.dart';
import 'app_colors.dart';

final ThemeData principalTheme = ThemeData(
  primaryColor: AppColors.primaryColor,
  appBarTheme: const AppBarTheme(
    color: AppColors.primaryColor,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColors.white),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: AppColors.primaryColor),
    ),
  ),
);
