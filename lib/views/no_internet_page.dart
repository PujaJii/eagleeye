import 'package:eagleeye/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/app_colors.dart';




class NoInternetPage extends StatelessWidget {
  const NoInternetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity,),
          Container(
            height: 150,
            width: 180,
            child : Image.asset('assets/images/no_internet.png'),
          ),
          const Text('You are not connected to internet! Please retry!'),
          const SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              //SystemNavigator.pop();
              Get.offAll(()=> const SplashScreen());
            },
           // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.themeColor)),
            child: const Text('OK'),
          )
        ],
      ),
    );
  }
}
