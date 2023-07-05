import 'package:eagleeye/views/regis/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/app_colors.dart';
import 'company_views/regis/company_register.dart';




class SplashSelect extends StatefulWidget {
  const SplashSelect({Key? key}) : super(key: key);

  @override
  State<SplashSelect> createState() => _SplashSelectState();
}
bool isSelected1 = true;
bool isSelected2 = true;

class _SplashSelectState extends State<SplashSelect> {

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset('assets/images/splash_seect.png',fit: BoxFit.cover,),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 110,width: double.infinity),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isSelected1 = false;
                          isSelected2 = true;
                        });
                      },
                      child: Material(
                        elevation: 7,
                        borderRadius: BorderRadius.circular(40),
                        child: Container(
                          height: 45,
                          width: 130,
                          // margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                              color: isSelected1 ? Colors.white :
                              AppColors.themeColor,
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
                              border:  Border.all(color: Colors.grey[350]!),
                              borderRadius: BorderRadius.circular(40)),
                          child: Center(
                              child: Text('Search a job',
                                style: TextStyle(
                                    color :isSelected1 ? Colors.black87 : Colors.white,
                                    fontSize: 16),)),
                        ),
                      ),
                    ),const SizedBox(width: 10,),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isSelected1 = true;
                          isSelected2 = false;
                        });
                      },
                      child: Material(
                        elevation: 7,
                        borderRadius: BorderRadius.circular(40),
                        child: Container(
                          height: 45,
                          width: 130,
                          // margin: const EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                              color: isSelected2 ? Colors.white :
                              AppColors.themeColor,
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
                              border:  Border.all(color: Colors.grey[350]!),
                              borderRadius: BorderRadius.circular(40)),
                          child: Center(
                              child: Text('Post a Job',style: TextStyle(
                                  color: isSelected2 ? Colors.black87 : Colors.white,
                                  fontSize: 16),)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                isSelected1 == false || isSelected2 == false?
                InkWell(
                  onTap: () async {
                    if(isSelected1 == false){
                      Get.to(()=> const Register());
                    }else{
                      Get.to(()=> const CompanyRegister());
                    }
                  },
                  child: Material(
                    elevation: 7,
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      height: 45,
                      width: 270,
                      decoration: BoxDecoration(
                          color: AppColors.themeColor,
                          borderRadius: BorderRadius.circular(40)),
                      child: const Center(child:  Text('  Continue',
                        style: TextStyle(color:Colors.white,fontSize: 16),)),
                    ),
                  ),
                ):
                Material(
                  elevation: 7,
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: 45,
                    width: 270,
                    decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(40)),
                    child: const Center(child:  Text('  Continue',
                      style: TextStyle(color:Colors.black,fontSize: 16),)),
                  ),
                ),
                const SizedBox(height: 15,)
              ],
            )

          ],
        ),
      );
  }
}