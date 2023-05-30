import 'package:flutter/material.dart';

import '../styles/app_colors.dart';


class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: '     Eagle Eye',
                      style: TextStyle(color: Colors.black,fontSize: 18),
                    ),
                    TextSpan(
                      text: '\$',
                      style: TextStyle(color: Colors.amber,fontSize: 18),
                    ),
                    TextSpan(
                      text: ' Career',
                      style: TextStyle(color: AppColors.themeColor2,fontSize: 18),
                    ),
                  ],
                ),
              ),
              const Text('       Search jobs'),
              const SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 7),
                child: TextFormField(
                  //controller: createController.minutes,
                  validator: (input) =>
                  input!.isEmpty ? "Please Enter a designation" : null,
                  //keyboardType: TextInputType.numberWithOptions(decimal: false),
                  decoration: InputDecoration(
                    hintText: ' Skills, designation,companies',
                    hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                    fillColor: AppColors.textField,
                    filled: true,
                    labelText: '   Skills, designation,companies',
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
                  input!.isEmpty ? "Please Enter Location" : null,
                  //keyboardType: TextInputType.numberWithOptions(decimal: false),
                  decoration: InputDecoration(
                    hintText: ' Select a city, state or pin code',
                    hintStyle: const TextStyle(fontSize: 14,color: Colors.grey),
                    fillColor: AppColors.textField,
                    filled: true,
                    labelText: '   Location',
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
              const SizedBox(height: 40,),
              Container(
                width: double.infinity,
                height: 44,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.themeColor)),
                    onPressed: () {
                      //Get.to(()=> const BottomNavPage());

                    }, child: const Text('Continue',style: TextStyle(color: Colors.white),)),
              ),
              const SizedBox(height: 10,),
              const Divider(),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 5),
                    child: Text(
                      'Top Companies',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20, top: 8),
                    child: InkWell(
                        child:  Text(
                          'See more',
                          style: TextStyle(
                              fontSize: 13),
                        )
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  padding: const EdgeInsets.only(left: 10),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 6),
                      child: InkWell(
                        onTap: () { },
                        child: Container(
                          width: 180,
                          height: 250,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3,
                                  offset: Offset(
                                    0,
                                    3,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              border: Border.all(color: Colors.grey[300]!)
                          ),
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.only(left: 10,top: 0),
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/company_logo.png'))),
                              ),
                              const SizedBox(height: 5,),
                              const Text(('Zetwerk')),
                              const SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.star, color: Colors.amber,size: 20,),
                                  Text('  4.6   |  165 Reviews')
                                ],
                              ),
                              const SizedBox(height: 10,),
                              const Text('Corporate'),
                              const SizedBox(height: 5,),
                              const Text('View Openings',style: TextStyle(color: AppColors.themeColor),),
                              const SizedBox(height: 10,),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
