
import 'package:eagleeye/styles/app_colors.dart';
import 'package:eagleeye/views/regis/personal_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../backend/controller/log_in_controller.dart';




class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  LogInController logInController = Get.put(LogInController());
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset('assets/images/bg_z.jpg',fit: BoxFit.cover,),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10,width: double.infinity,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('      Log In to continue',style: TextStyle(color: AppColors.themeColor,fontSize: 20)),
                    Row(
                      children: [
                        const Text('        Don’t have an account ?',
                          style: TextStyle(fontSize: 14,color: Colors.black),),
                        InkWell(
                          onTap: () {
                            Get.to(()=> const PersonalDetails());
                          },
                          child: const Text(' Register new',
                            style: TextStyle(fontSize: 14,color: AppColors.themeColor),),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20,width: double.infinity,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 7),
                  child: TextFormField(
                    controller: logInController.email,
                    validator: (input) =>
                    input!.isEmpty ? "Please Enter email or phone" : null,
                    //keyboardType: TextInputType.numberWithOptions(decimal: false),
                    decoration: InputDecoration(
                      hintText: ' Enter Email or Phone',
                      hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                      fillColor: AppColors.textField,
                      filled: true,
                      labelText: '   Email or Phone',
                      labelStyle: const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                          fontStyle: FontStyle.normal),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(
                            color: AppColors.textFieldBorder,
                          )
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 7),
                  child: TextFormField(
                    controller: logInController.password,
                    validator: (input) =>
                    input!.isEmpty ? "Please Enter password" : null,
                    //keyboardType: TextInputType.numberWithOptions(decimal: false),
                    decoration: InputDecoration(
                      hintText: ' Password',
                      hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                      fillColor: AppColors.textField,
                      filled: true,
                      labelText: '   Password',
                      labelStyle: const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                          fontStyle: FontStyle.normal),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(
                            color: AppColors.textFieldBorder,
                          )
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50,),
                Container(
                  width: double.infinity,
                  height: 44,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.themeColor)),
                      onPressed: () {
                        if(_key.currentState!.validate()){
                          logInController.logIn();
                          //Get.to(()=> const BottomNavPage());
                        }
                      }, child: const Text('Continue',style: TextStyle(color: Colors.white),)),
                ),const SizedBox(height: 20,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
