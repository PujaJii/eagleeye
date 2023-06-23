
import 'package:eagleeye/styles/app_colors.dart';
import 'package:eagleeye/views/regis/qualification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'log_in.dart';
import 'package:intl/intl.dart';



class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController birthDate = TextEditingController();
  TextEditingController currentStatus = TextEditingController();
  TextEditingController permanentStatus = TextEditingController();
  final _box = GetStorage();
  final _key = GlobalKey<FormState>();
  List<String> statusType = ['Single','Married','Divorced'];
  String statusVal = '';

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
               const SizedBox(height: 40,width: double.infinity),
               const Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('      Register',style: TextStyle(color: AppColors.themeColor,fontSize: 20)),
                   Text('Enter your details to create your Eagle eyes career account',
                     style: TextStyle(fontSize: 16,color: Colors.black),textAlign: TextAlign.center,),
                 ],
               ),
               const SizedBox(height: 20,width: double.infinity),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     height: 80,
                     width: 80,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                         color: AppColors.themeColorLight),
                     child: const Center(child: Icon(Icons.person,size: 30,)),

                   ),
                 ],
               ),
               const SizedBox(height: 15,),
               Container(
                 margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                 child: TextFormField(
                   controller: name,
                   validator: (input) =>
                   input!.isEmpty ? "Please Enter name" : null,
                   //keyboardType: TextInputType.numberWithOptions(decimal: false),
                   decoration: InputDecoration(
                     hintText: ' Enter name',
                     hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                     fillColor: AppColors.textField,
                     filled: true,
                     labelText: '   Name',
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
                 margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                 child: TextFormField(
                   controller: email,
                   validator: (input) =>
                   input!.isEmpty ? "Please Enter email" : null,
                   //keyboardType: TextInputType.numberWithOptions(decimal: false),
                   decoration: InputDecoration(
                     hintText: '  Email',
                     hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                     fillColor: AppColors.textField,
                     filled: true,
                     labelText: '   Email',
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
                 margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                 child: TextFormField(
                   controller: number,
                   validator: (input) =>
                   input!.isEmpty ? "Please Enter number" : null,
                   //keyboardType: TextInputType.numberWithOptions(decimal: false),
                   decoration: InputDecoration(
                     hintText: ' Mobile no.',
                     hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                     fillColor: AppColors.textField,
                     filled: true,
                     labelText: '   Mobile no.',
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
               Row(
                 children: [
                   Expanded(
                     child: Container(
                         margin: const EdgeInsets.fromLTRB(25,10,5,10),
                         // decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                         child: TextFormField(
                           //keyboardType: TextInputType.datetime,
                             controller: birthDate,
                             validator: (input) =>
                             input!.isEmpty ? 'Enter Birth Date' : null,
                             readOnly: true,
                             onTap: () async {
                               DateTime? pickedDate = await showDatePicker(
                                   context: context,
                                   initialDate: DateTime(2100),
                                   firstDate: DateTime.now(),
                                   //DateTime.now() - not to allow to choose before today.
                                   lastDate: DateTime(2100));
                               if (pickedDate != null) {
                                 print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                 String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                                 print(formattedDate); //formatted date output using intl package =>  2021-03-16
                                 setState(() {
                                   birthDate.text =
                                       formattedDate; //set output date to TextField value.
                                 });
                               } else {}
                             },
                             textInputAction: TextInputAction.next,
                             style: const TextStyle(fontSize: 15, color: AppColors.black),
                             decoration: InputDecoration(
                               hintStyle: const TextStyle(
                                   fontSize: 13, color: Colors.grey),
                               fillColor: AppColors.white,
                               filled: true,
                               contentPadding: const EdgeInsets.symmetric(
                                   horizontal: 16.0, vertical: 16.0),
                               hintText: '  Enter birth date',
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(40),
                                   borderSide: const BorderSide(
                                     color: AppColors.textFieldBorder,
                                   )
                               ),
                             )
                         ),
                     ),
                   ),
                   Expanded(
                     child: Container(
                         margin: const EdgeInsets.fromLTRB(5,10,25,10),
                         //decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                         child:  DropdownButtonFormField(
                           validator: (input) =>
                           input == null ? 'Please Marital status' : null,
                           iconSize: 0,
                           decoration: InputDecoration(
                             filled: true,
                             fillColor: AppColors.textField,
                             contentPadding: const EdgeInsets.symmetric(
                                 horizontal: 8.0, vertical: 8.0),
                             //  icon: const Icon(Icons.keyboard_arrow_down_outlined),
                             suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined,size: 18),
                             hintText: '   Marital status',
                             hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                             border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(40),
                                 borderSide: const BorderSide(
                                   color: AppColors.textFieldBorder,
                                 )
                             ),
                           ),
                           items: statusType.map((String category) {
                             return DropdownMenuItem(value: category, child:
                             Text('   $category'));
                           }).toList(),
                           onChanged: (String? value) {
                             setState(() {
                               statusVal = value!;
                             });
                           },
                         ),
                     ),
                   ),

                 ],
               ),
               Container(
                 margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                 child: TextFormField(
                   controller: currentStatus,
                   validator: (input) =>
                   input!.isEmpty ? "Please Enter address" : null,
                  // keyboardType: TextInputType.numberWithOptions(decimal: false),
                   decoration: InputDecoration(
                     hintText: ' Current address',
                     hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                     fillColor: AppColors.textField,
                     filled: true,
                     labelText: '   Current address',
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
                 margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                 child: TextFormField(
                   controller: permanentStatus,
                   validator: (input) =>
                   input!.isEmpty ? "Please Enter address" : null,
                   //keyboardType: TextInputType.numberWithOptions(decimal: false),
                   decoration: InputDecoration(
                     hintText: ' Permanent address',
                     hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                     fillColor: AppColors.textField,
                     filled: true,
                     labelText: '   Permanent address',
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
               const SizedBox(height: 30,),
               Container(
                 width: double.infinity,
                 height: 44,
                 margin: const EdgeInsets.symmetric(horizontal: 20),
                 child: ElevatedButton(
                     style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.themeColor)),
                     onPressed: () {
                       if(_key.currentState!.validate()){
                         Get.to(()=> const QualificationDetails());
                         _box.write('name', name.text);
                         _box.write('email', email.text);
                         _box.write('number', number.text);
                         _box.write('birthDate', birthDate.text);
                         _box.write('martialStatus', statusVal);
                         _box.write('currentStatus', currentStatus.text);
                         _box.write('permanentStatus', permanentStatus.text);
                       }
                     }, child: const Text('Continue',style: TextStyle(color: Colors.white),)),
               ),const SizedBox(height: 20,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const Text('        Already have an account?',
                     style: TextStyle(fontSize: 15,color: Colors.black),),
                   InkWell(
                     onTap: () {
                       Get.to(()=> const LogInPage());
                     },
                     child: const Text('  Log In',
                       style: TextStyle(fontSize: 15,color: AppColors.themeColor),),
                   ),
                 ],
               ),
               const SizedBox(height: 20,)
             ],
            ),
          ],
        ),
      ),
    );
  }
}
