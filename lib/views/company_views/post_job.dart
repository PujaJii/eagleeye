import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';

import '../../styles/app_colors.dart';



enum Options {
  option1,
  option2,
}
enum Options1 {
  fullTime,
  partTime,
}

class JobPostPage extends StatelessWidget {
  const JobPostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    List<dynamic> _selectedValues = [];
   // JobPostController jobPostController = Get.put(JobPostController());
    Rx<Options> selectedOption = Options.option1.obs;
    Rx<Options1> selectedOption1 = Options1.fullTime.obs;
    List<String> dropdownMenu = ['INR','USD'];
    TextEditingController date = TextEditingController();
    // var remoteValue =  1.obs;
    // jobPostController.isRemote.text = '1';
    // jobPostController.jobType.text = 'Full Time';

    return Scaffold(
      body: Form(
        key: formKey,
        child:
        Obx(()=> ListView(
          children: [
            //const SizedBox(height: 35,),
            const SizedBox(height: 20,),
            const Center(child: Text('Enter job details ',style: TextStyle(
                color: Colors.black,fontSize: 18))),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextFormField(
                //controller: jobPostController.jobTitleTEC,
                validator: (input) =>
                input!.isEmpty? 'Please Enter Job Title': null,
                //style: const TextStyle(color: Colors.white),
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  // prefixIcon: Icon(Icons.account_balance,color: AppColors.themeColorDark),
                    contentPadding: EdgeInsets.fromLTRB(20,0,0,0),
                    hintText: 'Job Title',
                    hintStyle: TextStyle(color: Colors.grey),
                    label: Text('Enter Job Title'),
                    labelStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder()
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextFormField(
               // controller: jobPostController.jobDescription,
                validator: (input) =>
                input!.isEmpty? 'Please Enter Job Description': null,
                // style: const TextStyle(color: Colors.white),
                textInputAction: TextInputAction.next,
                decoration:  const InputDecoration(
                  //prefixIcon: Icon(Icons.location_city,color: AppColors.themeColorDark),
                    contentPadding: EdgeInsets.fromLTRB(20,0,0,0),
                    hintText: 'Job Description',
                    hintStyle: TextStyle(color: Colors.grey),
                    label: Text('Enter Job Description'),
                    labelStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder()
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextFormField(
                //controller: jobPostController.jobRequirements,
                //keyboardType: TextInputType.number,
                validator: (input) =>
                input!.isEmpty? 'Please Enter Company Name': null,
                // style: const TextStyle(color: Colors.white),
                textInputAction: TextInputAction.next,
                decoration:  const InputDecoration(
                  //prefixIcon: Icon(Icons.location_on,color: AppColors.themeColorDark),
                    contentPadding: EdgeInsets.fromLTRB(20,0,0,0),
                    hintText: 'Company Name',
                    hintStyle: TextStyle(color: Colors.grey),
                    label: Text('Company Name'),
                    labelStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder()
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Radio(
                          value: Options1.fullTime,
                          groupValue: selectedOption1.value,
                          onChanged: (Options1? value) {
                            selectedOption1.value = value!;
                            //jobPostController.jobType.text = 'Full Time';
                          },
                        ),
                        const Text('Full Time'),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Radio(
                          value: Options1.partTime,
                          groupValue: selectedOption1.value,
                          onChanged: (Options1? value) {
                            selectedOption1.value = value!;
                            //jobPostController.jobType.text = 'Part Time';
                          },
                        ),
                        const Text('Part Time'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            //   child: TextFormField(
            //     controller: jobPostController.jobType,
            //     //keyboardType: TextInputType.number,
            //     validator: (input) =>
            //     input!.isEmpty? 'Please Enter Job Type': null,
            //    // style: const TextStyle(color: Colors.white),
            //     textInputAction: TextInputAction.next,
            //     decoration:  const InputDecoration(
            //        // prefixIcon: Icon(Icons.add_business_outlined,color: AppColors.themeColorDark),
            //         contentPadding: EdgeInsets.fromLTRB(20,0,0,0),
            //         hintText: 'Job Type',
            //         hintStyle: TextStyle(color: Colors.grey),
            //         label: Text('Job Type'),
            //         labelStyle: TextStyle(color: Colors.grey),
            //         border: OutlineInputBorder()
            //     ),
            //   ),
            // ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextFormField(
               // controller: jobPostController.jobLocation,
                //keyboardType: TextInputType.number,
                validator: (input) =>
                input!.isEmpty? 'Please Enter Job Location': null,
                // style: const TextStyle(color: Colors.white),
                textInputAction: TextInputAction.next,
                decoration:  const InputDecoration(
                  // prefixIcon: Icon(Icons.add_business_outlined,color: AppColors.themeColorDark),
                    contentPadding: EdgeInsets.fromLTRB(20,0,0,0),
                    hintText: 'Job location',
                    hintStyle: TextStyle(color: Colors.grey),
                    label: Text('Job location'),
                    labelStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder()
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextFormField(
               // controller: jobPostController.salaryMin,
                keyboardType: TextInputType.number,
                validator: (input) =>
                input!.isEmpty? 'Please Enter a Min Salary': null,
                //style: const TextStyle(color: Colors.white),
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  // prefixIcon: Icon(Icons.pin_drop_outlined,color: AppColors.themeColorDark),
                    contentPadding: EdgeInsets.fromLTRB(20,0,0,0),
                    hintText: 'Min Salary',
                    hintStyle: TextStyle(color: Colors.grey),
                    label: Text('Min Salary'),
                    labelStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder()
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextFormField(
                //controller: jobPostController.salaryMax,
                keyboardType: TextInputType.number,
                validator: (input) =>
                input!.isEmpty? 'Please Enter a Max Salary': null,
                //style: const TextStyle(color: Colors.white),
                textInputAction: TextInputAction.next,
                decoration:  const InputDecoration(
                  // prefixIcon: Icon(Icons.reduce_capacity_outlined,color: AppColors.themeColorDark),
                    contentPadding: EdgeInsets.fromLTRB(20,0,0,0),
                    hintText: 'Max Salary',
                    hintStyle: TextStyle(color: Colors.grey),
                    label: Text('Max Salary'),
                    labelStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder()
                ),
              ),
            ),
            // Container(
            //   //height: 50,
            //   margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            //   child: DropdownButtonFormField(
            //     validator: (input) =>
            //     input == null ? 'Please enter salary currency' : null,
            //     iconSize: 0,
            //     decoration: InputDecoration(
            //       contentPadding: const EdgeInsets.symmetric(
            //           horizontal: 5, vertical: 15),
            //       //  icon: const Icon(Icons.keyboard_arrow_down_outlined),
            //       suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined, color: AppColors.themeColor),
            //       hintText: '   Select salary currency',
            //       hintStyle: const TextStyle(color: Colors.grey),
            //       border: OutlineInputBorder(
            //           borderSide: const BorderSide(color: Colors.black),
            //           borderRadius: BorderRadius.circular(5)),
            //     ),
            //     items: dropdownMenu.map((String currencyType) {
            //       return DropdownMenuItem(value: currencyType, child:
            //       Text('   $currencyType',),
            //       );
            //     }).toList(),
            //     onChanged: (String? value) {
            //       //jobPostController.salaryCurrency.text = value!;
            //     },
            //   ),
            // ),
            // Container(
            //   margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            //   child: TextFormField(
            //     controller: jobPostController.salaryCurrency,
            //     //keyboardType: TextInputType.number,
            //     validator: (input) =>
            //     input!.isEmpty? 'Please enter Salary currency': null,
            //     //style: const TextStyle(color: Colors.white),
            //     textInputAction: TextInputAction.next,
            //     decoration:  const InputDecoration(
            //     //    prefixIcon: Icon(Icons.numbers_sharp,color: AppColors.themeColorDark),
            //         contentPadding: EdgeInsets.fromLTRB(20,0,0,0),
            //         hintText: 'Salary currency',
            //         hintStyle: TextStyle(color: Colors.grey),
            //         label: Text('Salary currency'),
            //         labelStyle: TextStyle(color: Colors.grey),
            //         border: OutlineInputBorder()
            //     ),
            //   ),
            // ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Radio(
                          value: Options.option1,
                          groupValue: selectedOption.value,
                          onChanged: (Options? value) {
                            selectedOption.value = value!;
                            //jobPostController.isRemote.text = '1';
                          },
                        ),
                        const Text('Work From Home'),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Radio(
                          value: Options.option2,
                          groupValue: selectedOption.value,
                          onChanged: (Options? value) {
                            selectedOption.value = value!;
                            //jobPostController.isRemote.text = '0';
                          },
                        ),
                        const Text('Work from office'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  MultiSelectFormField(
                    //autovalidateMode: AutovalidateMode.always,
                    title: Text('Select Screening Question'),
                    dataSource: [
                      {'display': 'Question 1', 'value': 'question1'},
                      {'display': 'Question 2', 'value': 'question2'},
                      {'display': 'Question 3', 'value': 'question3'},
                    ],
                    textField: 'display',
                    valueField: 'value',
                    okButtonLabel: 'OK',
                    cancelButtonLabel: 'CANCEL',
                    hintWidget: Text('Please choose one or more options'),
                    initialValue: _selectedValues,
                    onSaved: (value) {
                      if (value == null) return;
                      // setState(() {
                        _selectedValues = value;
                     // });
                    },
                  ),
                  // SizedBox(height: 20),
                  // ElevatedButton(
                  //   child: Text('Submit'),
                  //   onPressed: () {
                  //     // Perform actions with selected values
                  //     print(_selectedValues);
                  //   },
                  // ),
                ],
              ),
            ),
            // Container(
            //   margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            //   child: TextFormField(
            //     controller: jobPostController.isRemote,
            //     keyboardType: TextInputType.number,
            //     validator: (input) =>
            //     input!.isEmpty? 'Please select remote type': null,
            //     //style: const TextStyle(color: Colors.white),
            //     textInputAction: TextInputAction.done,
            //     decoration:  const InputDecoration(
            //       //    prefixIcon: Icon(Icons.numbers_sharp,color: AppColors.themeColorDark),
            //         contentPadding: EdgeInsets.fromLTRB(20,0,0,0),
            //         hintText: 'Remote type',
            //         hintStyle: TextStyle(color: Colors.grey),
            //         label: Text('Remote type'),
            //         labelStyle: TextStyle(color: Colors.grey),
            //         border: OutlineInputBorder()
            //     ),
            //   ),
            // ),
            // Container(
            //   margin: const EdgeInsets.symmetric(
            //       horizontal: 20, vertical: 10),
            //   child: TextFormField(
            //     //keyboardType: TextInputType.datetime,
            //       controller:  date,
            //       validator: (input) =>
            //       input!.isEmpty ? "Please Enter Date" : null,
            //       readOnly: true,
            //       onTap: () async {
            //         DateTime? pickedDate = await showDatePicker(
            //             context: context,
            //             initialDate: DateTime.now(),
            //             firstDate: DateTime.now(),
            //             //DateTime.now() - not to allow to choose before today.
            //             lastDate: DateTime(2100));
            //         if (pickedDate != null) {
            //           debugPrint(pickedDate.toString()); //pickedDate output format => 2021-03-10 00:00:00.000
            //           String formattedDate =
            //           DateFormat('yyyy-MM-dd').format(pickedDate);
            //           // print(formattedDate); //formatted date output using intl package =>  2021-03-16
            //           //jobPostController.expiredAt.text =
            //             //  formattedDate; //set output date to TextField value.
            //           date.text = formattedDate;
            //         } else {}
            //       },
            //       textInputAction: TextInputAction.next,
            //       style: const TextStyle(
            //           fontSize: 15, color: Colors.black),
            //       decoration: InputDecoration(
            //         hintStyle: const TextStyle(
            //             color: Colors.grey),
            //         fillColor: Colors.white,
            //         filled: true,
            //         contentPadding: const EdgeInsets.symmetric(
            //             horizontal: 14.0, vertical: 14.0),
            //         hintText: '  Enter Expiry date',
            //         // labelText: '   Enter meeting date',
            //         // labelStyle: const TextStyle(
            //         //     fontSize: 13,
            //         //     color: Colors.black,
            //         //     fontStyle: FontStyle.normal),
            //         border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(5),
            //         ),
            //       )
            //   ),
            // ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                if(formKey.currentState!.validate()) {
                  // debugPrint(jobPostController.jobType.text);
                  // jobPostController.postJobs();
                }
              },
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: AppColors.themeColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Center(
                    child: Text('Post',style: TextStyle(
                        fontSize: 16,
                        color: Colors.white))),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
        ),
      ),
    );
  }
}