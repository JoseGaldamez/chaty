import 'package:flutter/material.dart';
import '../screens/screens.dart';

final appRoutes = <String, WidgetBuilder>{
  'login': (BuildContext context) => const LoginScreen(),
  'home': (BuildContext context) => const HomeScreen(),
};
