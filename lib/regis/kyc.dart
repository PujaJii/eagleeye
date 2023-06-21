import 'package:eagleeye/regis/password.dart';
import 'package:eagleeye/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';



class KYCPage extends StatefulWidget {
  const KYCPage({Key? key}) : super(key: key);

  @override
  State<KYCPage> createState() => _KYCPageState();
}

class _KYCPageState extends State<KYCPage> {

  TextEditingController aadhar = TextEditingController();
  TextEditingController pan = TextEditingController();
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
            Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20,width: double.infinity,),
                 const Column(
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
                    controller: aadhar,
                    maxLength: 16,
                    validator: (input) =>
                    input!.isEmpty || input.length != 16
                        ? "Please Enter a valid Aadhaar number" : null,
                    keyboardType: const TextInputType.numberWithOptions(decimal: false),
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
                    controller: pan,
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
                        if(_key.currentState!.validate()){
                          Get.to(()=> const PasswordCreate());
                          _box.write('aadhar', aadhar.text);
                          _box.write('pan', pan.text);
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
