import 'package:eagleeye/regis/qualification.dart';
import 'package:eagleeye/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class PersonalDetails extends StatelessWidget {
  const PersonalDetails({Key? key}) : super(key: key);

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
             const SizedBox(height: 50,width: double.infinity,),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('      Register',style: TextStyle(color: AppColors.themeColor,fontSize: 20)),
                 const Text('Enter your details to create your Eagle eyes career account',
                   style: TextStyle(fontSize: 16,color: Colors.black),textAlign: TextAlign.center,),
               ],
             ),
             const SizedBox(height: 20,width: double.infinity,),
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
             const SizedBox(height: 20,),
             
             Row(
               children: [
                 Expanded(
                   child: Container(
                       margin: const EdgeInsets.fromLTRB(25,7,5,7),
                      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                       child: TextFormField(
                         //controller: createController.minutes,
                         validator: (input) =>
                         input!.isEmpty ? "Please Enter name" : null,
                        // keyboardType: TextInputType.numberWithOptions(decimal: false),
                         decoration: InputDecoration(

                           hintText: ' First name',
                           hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                           fillColor: AppColors.textField,
                           filled: true,
                           labelText: '   First Name',
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
                         input!.isEmpty ? "Please Enter name" : null,
                         //keyboardType: TextInputType.numberWithOptions(decimal: false),
                         decoration: InputDecoration(
                           hintText: ' Last name',
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
             Container(
               margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 7),
               child: TextFormField(
                 //controller: createController.minutes,
                 validator: (input) =>
                 input!.isEmpty ? "Please Enter email" : null,
                 //keyboardType: TextInputType.numberWithOptions(decimal: false),
                 decoration: InputDecoration(
                   hintText: ' Email ID',
                   hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                   fillColor: AppColors.textField,
                   filled: true,
                   labelText: '   Email ID',
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
               ),
             ),
             Container(
               margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 7),
               child: TextFormField(
                 //controller: createController.minutes,
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
                       borderSide: BorderSide(
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
                         //controller: createController.minutes,
                         validator: (input) =>
                         input!.isEmpty ? "Enter Birth date" : null,
                         //keyboardType: TextInputType.numberWithOptions(decimal: false),
                         decoration: InputDecoration(
                           hintText: 'Birth date',
                           hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                           fillColor: AppColors.textField,
                           filled: true,
                           labelText: '   Birth date',
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
                       margin: const EdgeInsets.fromLTRB(5,10,25,10),
                       //decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                       child: TextFormField(
                         //controller: createController.minutes,
                         validator: (input) =>
                         input!.isEmpty ? "Enter Marital status" : null,
                         //keyboardType: TextInputType.numberWithOptions(decimal: false),
                         decoration: InputDecoration(
                           hintText: 'Marital status',
                           hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                           fillColor: AppColors.textField,
                           filled: true,
                           labelText: '   Marital status',
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
             Container(
               margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 7),
               child: TextFormField(
                 //controller: createController.minutes,
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
                       borderSide: BorderSide(
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
                       borderSide: BorderSide(
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
                      Get.to(()=> const QualificationDetails());

                   }, child: const Text('Continue',style: TextStyle(color: Colors.white),)),
             ),const SizedBox(height: 20,),
           ],
          ),
        ],
      ),
    );
  }
}
