import 'package:eagleeye/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'kyc.dart';



class EmploymentDetails extends StatelessWidget {
  const EmploymentDetails({Key? key}) : super(key: key);

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

          ListView(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 80,width: double.infinity,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('      Employment',style: TextStyle(color: AppColors.themeColor,fontSize: 20)),
                  Text('        Enter your employment details',
                    style: TextStyle(fontSize: 15,color: Colors.black),),
                ],
              ),
              const SizedBox(height: 50,width: double.infinity,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 7),
                child: TextFormField(
                  //controller: createController.minutes,
                  validator: (input) =>
                  input!.isEmpty ? "Please Enter name" : null,
                  //keyboardType: TextInputType.numberWithOptions(decimal: false),
                  decoration: InputDecoration(
                    hintText: ' Company name',
                    hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                    fillColor: AppColors.textField,
                    filled: true,
                    labelText: '   Company Name',
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
                  input!.isEmpty ? "Please Enter salary" : null,
                  //keyboardType: TextInputType.numberWithOptions(decimal: false),
                  decoration: InputDecoration(
                    hintText: ' Previous salary',
                    hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                    fillColor: AppColors.textField,
                    filled: true,
                    labelText: '   Last Name',
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
                  input!.isEmpty ? "Please Enter time" : null,
                  // keyboardType: TextInputType.numberWithOptions(decimal: false),
                  decoration: InputDecoration(
                    hintText: ' Total worked time',
                    hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                    fillColor: AppColors.textField,
                    filled: true,
                    labelText: '   Total Worked time',
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
                  input!.isEmpty ? "Please Enter responsibilities" : null,
                  //keyboardType: TextInputType.numberWithOptions(decimal: false),
                  decoration: InputDecoration(
                    hintText: ' Job responsibilities',
                    hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                    fillColor: AppColors.textField,
                    filled: true,
                    labelText: '   Job responsibilities',
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
                  input!.isEmpty ? "Please Enter responsibilities" : null,
                  //keyboardType: TextInputType.numberWithOptions(decimal: false),
                  decoration: InputDecoration(
                    hintText: ' Industry type',
                    hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                    fillColor: AppColors.textField,
                    filled: true,
                    labelText: '   Industry type',
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
                      Get.to(()=> const KYCPage());

                    }, child: const Text('Continue',style: TextStyle(color: Colors.white),)),
              ),const SizedBox(height: 20,),
            ],
          ),
        ],
      ),
    );
  }
}
