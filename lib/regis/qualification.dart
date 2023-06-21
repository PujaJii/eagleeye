import 'package:eagleeye/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'employement.dart';



class QualificationDetails extends StatefulWidget {
  const QualificationDetails({Key? key}) : super(key: key);

  @override
  State<QualificationDetails> createState() => _QualificationDetailsState();
}

class _QualificationDetailsState extends State<QualificationDetails> {

  TextEditingController degree = TextEditingController();
  TextEditingController percentage = TextEditingController();
  TextEditingController year = TextEditingController();
  TextEditingController university = TextEditingController();
  final _box = GetStorage();
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
            ListView(
              children: [
                const SizedBox(height: 80,width: double.infinity,),
                 const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('       Qualification',style: TextStyle(color: AppColors.themeColor,fontSize: 20)),
                    Text('Please add your qualification details to find jobs accordingly.',
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
                                  controller: degree,
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
                                        borderSide: const BorderSide(
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
                                  controller: percentage,
                                  validator: (input) =>
                                  input!.isEmpty ? "Please Enter Percentage" : null,
                                  keyboardType: const TextInputType.numberWithOptions(decimal: false),
                                  decoration: InputDecoration(
                                    hintText: '  Percentage',
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
                                        borderSide: const BorderSide(
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
                                  controller: year,
                                  validator: (input) =>
                                  input!.isEmpty ? "Please Enter year" : null,
                                  keyboardType: const TextInputType.numberWithOptions(decimal: false),
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
                                        borderSide: const BorderSide(
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
                                  controller: university,
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
                                        borderSide: const BorderSide(
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
                        if(_key.currentState!.validate()){
                          Get.to(()=> const EmploymentDetails());
                          _box.write('degree', degree.text);
                          _box.write('percentage', percentage.text);
                          _box.write('year', year.text);
                          _box.write('university', university.text);
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
