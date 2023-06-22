import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:eagleeye/views/bottom_nav_bar.dart';
import 'package:eagleeye/views/splash_select.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'no_internet_page.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final _box = GetStorage();
  final Connectivity _connectivity = Connectivity();

  @override
  void initState() {
    Timer(const Duration(seconds: 2), () async {
       ConnectivityResult connectivityResult = await _connectivity.checkConnectivity();
      // // AuthService().handleAuthState();
      if (connectivityResult == ConnectivityResult.none) {
        // I am not connected to a network.
        Get.offAll(()=> const NoInternetPage());
      } else {
        print(_box.read('isUserLogin'));
        if(_box.read('isUserLogin') == true){
          Get.offAll(()=> const BottomNavPage());
        }else{
        Get.offAll(()=> const SplashSelect());}
      }
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
