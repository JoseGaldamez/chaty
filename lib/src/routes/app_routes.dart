import 'package:get/get.dart';
import '../screens/screens.dart';

final appRoutes = [
  GetPage(name: '/', page: () => const LoginScreen()),
  GetPage(name: '/register', page: () => const RegisterScreen()),
  GetPage(name: '/home', page: () => const HomeScreen()),
];
