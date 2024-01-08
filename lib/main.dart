import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutroials/screens/fruit_screen.dart';
import 'package:getx_tutroials/screens/homescreen.dart';
import 'package:getx_tutroials/screens/login_screen.dart';
import 'package:getx_tutroials/screens/screen_one.dart';
import 'package:getx_tutroials/screens/screen_two.dart';
import 'package:getx_tutroials/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX',
      locale: Locale('en', 'US'),
      translations: Languages(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/screenTwo', page: () => const ScreenTwo()),
        GetPage(name: '/screenOne', page: () => const ScreenOne()),
        GetPage(name: '/fruitScreen', page: () => const FruitScreen()),
        GetPage(name: '/loginScreen', page: () => const LoginScreen())
      ],
    );
  }
}
