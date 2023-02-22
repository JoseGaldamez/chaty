import 'package:flutter/material.dart';
import 'package:chaty/src/routes/app_routes.dart';
import 'package:chaty/src/themes/principal_theme.dart';
import 'package:get/get.dart';

void main() => runApp(const RootApp());

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Chaty',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: appRoutes,
      theme: principalTheme,
    );
  }
}
