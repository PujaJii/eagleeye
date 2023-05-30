import 'package:eagleeye/regis/password.dart';
import 'package:eagleeye/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class KYCPage extends StatelessWidget {
  const KYCPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset('assets/images/bg_c.png',fit: BoxFit.cover,),
          ),

          Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20,width: double.infinity,),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('      Complete with KYC',style: TextStyle(color: AppColors.themeColor,fontSize: 20)),
                  Text('        Enter your KYC details',
                    style: TextStyle(fontSize: 15,color: Colors.black),),
                ],
              ),
              const SizedBox(height: 20,width: double.infinity,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 7),
                child: TextFormField(
                  //controller: createController.minutes,
                  validator: (input) =>
                  input!.isEmpty ? "Please Enter Aadhaar" : null,
                  //keyboardType: TextInputType.numberWithOptions(decimal: false),
                  decoration: InputDecoration(
                    hintText: ' Aadhaar card number',
                    hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                    fillColor: AppColors.textField,
                    filled: true,
                    labelText: '   Aadhaar card number',
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
                  //controller: createController.minutes,
                  validator: (input) =>
                  input!.isEmpty ? "Please Enter pan" : null,
                  //keyboardType: TextInputType.numberWithOptions(decimal: false),
                  decoration: InputDecoration(
                    hintText: ' Pan card number',
                    hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                    fillColor: AppColors.textField,
                    filled: true,
                    labelText: '   Pan card number',
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
                      Get.to(()=> const PasswordCreate());

                    }, child: const Text('Continue',style: TextStyle(color: Colors.white),)),
              ),const SizedBox(height: 20,),
            ],
          ),
        ],
      ),
    );
  }
}
