import 'package:eagleeye/regis/log_in.dart';
import 'package:eagleeye/styles/app_colors.dart';
import 'package:eagleeye/regis/personal_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset('assets/images/bg_z.jpg',fit: BoxFit.cover,),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100,width: double.infinity,),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                    color: AppColors.themeColor),
                child: const Center(child: Text('LOGO',style: TextStyle(fontSize: 18,color: Colors.white),)),

              ),
              const SizedBox(height: 20,),
              const Text('We\'re Hiring \nBuild your future.Achieve your dreams',
                  style: TextStyle(fontSize: 20,),textAlign: TextAlign.center,),
              const SizedBox(height: 50,),
              Container(
                width: double.infinity,
                height: 44,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.themeColor)),
                    onPressed: () {
                      Get.to(()=> const PersonalDetails());

                }, child: const Text('Register now',style: TextStyle(color: Colors.white),)),
              ),const SizedBox(height: 20,),

              Container(
                width: double.infinity,
                height: 44,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.themeColorLight)),
                    onPressed: () {
                      Get.to(()=> const LogInPage());
                }, child: const Text('Log In',style: TextStyle(color: Colors.white),)),
              ),const SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 44,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(onPressed: () {

                }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset('assets/images/google.png'),
                    ),
                    const Text('    Continue with Google'),
                  ],
                )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
