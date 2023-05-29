import 'package:eagleeye/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'employement.dart';



class QualificationDetails extends StatelessWidget {
  const QualificationDetails({Key? key}) : super(key: key);

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

          ListView(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 80,width: double.infinity,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('       Qualificaton',style: TextStyle(color: AppColors.themeColor,fontSize: 20)),
                  const Text('Please add your qualification details to find jobs accordingly.',
                    style: TextStyle(fontSize: 16,color: Colors.black),textAlign: TextAlign.center,),
                ],
              ),
              const SizedBox(height: 20,width: double.infinity,),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(vertical: 25),
                decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(40)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.fromLTRB(25,7,5,7),
                              // decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                              child: TextFormField(
                                //controller: createController.minutes,
                                validator: (input) =>
                                input!.isEmpty ? "Please Enter degree" : null,
                                // keyboardType: TextInputType.numberWithOptions(decimal: false),
                                decoration: InputDecoration(

                                  hintText: 'Choose Degree',
                                  hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                                  fillColor: AppColors.textField,
                                  filled: true,
                                  labelText: '   Choose Degree',
                                  labelStyle: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 8.0),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: BorderSide(
                                        color: AppColors.textFieldBorder,
                                      )
                                  ),
                                ),
                              )
                          ),
                        ),
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.fromLTRB(5,7,25,7),
                              //decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                              child: TextFormField(
                                //controller: createController.minutes,
                                validator: (input) =>
                                input!.isEmpty ? "Please Enter Percentage" : null,
                                //keyboardType: TextInputType.numberWithOptions(decimal: false),
                                decoration: InputDecoration(
                                  hintText: 'Percentage',
                                  hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                                  fillColor: AppColors.textField,
                                  filled: true,
                                  labelText: '   Percentage',
                                  labelStyle: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 8.0),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: BorderSide(
                                        color: AppColors.textFieldBorder,
                                      )
                                  ),
                                ),
                              )
                          ),
                        ),

                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.fromLTRB(25,7,5,7),
                              // decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                              child: TextFormField(
                                //controller: createController.minutes,
                                validator: (input) =>
                                input!.isEmpty ? "Please Enter year" : null,
                                // keyboardType: TextInputType.numberWithOptions(decimal: false),
                                decoration: InputDecoration(

                                  hintText: 'Year of passing',
                                  hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                                  fillColor: AppColors.textField,
                                  filled: true,
                                  labelText: '   Year of passing',
                                  labelStyle: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 8.0),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: BorderSide(
                                        color: AppColors.textFieldBorder,
                                      )
                                  ),
                                ),
                              )
                          ),
                        ),
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.fromLTRB(5,7,25,7),
                              //decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                              child: TextFormField(
                                //controller: createController.minutes,
                                validator: (input) =>
                                input!.isEmpty ? "Please Enter board" : null,
                                //keyboardType: TextInputType.numberWithOptions(decimal: false),
                                decoration: InputDecoration(
                                  hintText: 'Board or university',
                                  hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                                  fillColor: AppColors.textField,
                                  filled: true,
                                  labelText: '   Board or university',
                                  labelStyle: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 8.0),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: BorderSide(
                                        color: AppColors.textFieldBorder,
                                      )
                                  ),
                                ),
                              )
                          ),
                        ),

                      ],
                    ),
                  ],
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
                       Get.to(()=> const EmployementDetails());

                    }, child: const Text('Continue',style: TextStyle(color: Colors.white),)),
              ),const SizedBox(height: 20,),
            ],
          ),
        ],
      ),
    );
  }
}
