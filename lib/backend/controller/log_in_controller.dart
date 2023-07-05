import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../views/bottom_nav_bar.dart';
import '../apis/log_in_api.dart';
import '../models/log_in_model.dart';




class LogInController extends GetxController{

  final _box = GetStorage();
  var isLoading = false.obs;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  List<LoginData> loginData  = [];


  logIn () async {
    Get.dialog(const Center(child: CircularProgressIndicator()),
        barrierDismissible: false);

    isLoading(true);
    var apiResponse = await LogInApi.logIn(email.text, password.text);

    if(apiResponse!=null){
      if(apiResponse.status=='success'){
        Get.offAll(() => const BottomNavPage());
        _box.write('isUserLogin', true);
        Get.snackbar('Log In successful', apiResponse.message.toString(),backgroundColor: Colors.white);
      }
      else if(apiResponse.status =='false'){
        Get.back();
        Get.snackbar('Failed', apiResponse.message.toString(), backgroundColor: Colors.redAccent,colorText: Colors.white);
      }
      else {
        Get.back();
        Get.snackbar('Server error', 'please check the connection');
      }
    }else{
      Get.back();
      Get.snackbar('Internal Server error', 'please check the connection');
    }
  }
}