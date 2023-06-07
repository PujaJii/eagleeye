import 'dart:async';

import 'package:eagleeye/regis/register.dart';
import 'package:eagleeye/views/splash_select.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () async {
      // ConnectivityResult connectivityResult = await _connectivity.checkConnectivity();
      // // AuthService().handleAuthState();
      // if (connectivityResult == ConnectivityResult.none) {
      //   // I am not connected to a network.
      //   Get.offAll(()=> const NoInternet());
      // } else {
      //   Get.offAll(AuthService().handleAuthState());
      // }
      Get.to(()=> const SplashSelect());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset('assets/images/splash_screen.png',fit: BoxFit.cover,),
      ),
    );
  }
}
