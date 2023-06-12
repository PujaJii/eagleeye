import '../../apis/register_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../views/home.dart';




class RegisterController extends GetxController{

  final _box = GetStorage();
  var isLoading = false.obs;
  TextEditingController webLink = TextEditingController();
  TextEditingController about = TextEditingController();

  void clearStorage() async {
    await GetStorage().erase();
  }


  register (String industry,{dynamic image}) async {
    const CircularProgressIndicator();

    isLoading(true);
    var apiResponse = await RegisterApi.register(
      _box.read('name_company'),
      _box.read('email_company'),
      _box.read('password'),
      webLink.text,
      about.text,
      _box.read('address'),
      _box.read('city'),
      _box.read('state'),
      _box.read('pin_code'),
      _box.read('country'),
      industry,
      _box.read('man_power'),
      _box.read('year'),
      _box.read('year'),
      _box.read('year'),
      _box.read('year'),
      _box.read('year'),
      _box.read('year'),
      _box.read('year'),
      image: image,
    );
    //print()
    if(apiResponse!=null){

      if(apiResponse.status=='success'){
        Get.offAll(() => const HomePage());
        Get.snackbar('Registered successfully', apiResponse.message.toString(),backgroundColor: Colors.white);
      }
      else if(apiResponse.status =='false'){
        Get.back();
        Get.snackbar('Failed', 'E-mail already exists');
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