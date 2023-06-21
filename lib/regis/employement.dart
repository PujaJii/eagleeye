import 'package:eagleeye/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'kyc.dart';



class EmploymentDetails extends StatefulWidget {
  const EmploymentDetails({Key? key}) : super(key: key);

  @override
  State<EmploymentDetails> createState() => _EmploymentDetailsState();
}

class _EmploymentDetailsState extends State<EmploymentDetails> {

  TextEditingController _companyName = TextEditingController();
  TextEditingController _lastSalary = TextEditingController();
  TextEditingController _workedTime = TextEditingController();
  TextEditingController _jobResponsibility = TextEditingController();
  TextEditingController _industryType = TextEditingController();
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
                    Text('      Employment',style: TextStyle(color: AppColors.themeColor,fontSize: 20)),
                    Text('        Enter your employment details',
                      style: TextStyle(fontSize: 15,color: Colors.black),),
                  ],
                ),
                const SizedBox(height: 50,width: double.infinity,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 7),
                  child: TextFormField(
                    controller: _companyName,
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
                    controller: _lastSalary,
                    validator: (input) =>
                    input!.isEmpty ? "Please Enter salary" : null,
                    keyboardType: const TextInputType.numberWithOptions(decimal: false),
                    decoration: InputDecoration(
                      hintText: ' Previous salary',
                      hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                      fillColor: AppColors.textField,
                      filled: true,
                      labelText: '   Last Salary',
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
                    controller: _workedTime,
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
                    controller: _jobResponsibility,
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
                    controller: _industryType,
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
                        if(_key.currentState!.validate()){

                          Get.to(()=> const KYCPage());
                          _box.write('companyName', _companyName.text);
                          _box.write('lastSalary', _lastSalary.text);
                          _box.write('workedTime', _workedTime.text);
                          _box.write('jobResponsibility', _jobResponsibility.text);
                          _box.write('industryType', _industryType.text);

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
