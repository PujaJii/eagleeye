import 'package:eagleeye/styles/app_colors.dart';
import 'package:eagleeye/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';






void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Eagle eyes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.themeColor),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}