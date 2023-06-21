import '../../apis/register_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../views/bottom_nav_bar.dart';




class RegisterController extends GetxController{

  final _box = GetStorage();
  var isLoading = false.obs;
  TextEditingController password = TextEditingController();
  TextEditingController cPassword = TextEditingController();

  void clearStorage() async {
    await GetStorage().erase();
  }


  register ({dynamic image}) async {
    Get.dialog(const Center(child: CircularProgressIndicator()),
        barrierDismissible: false);

    isLoading(true);
    var apiResponse = await RegisterApi.register(
      ///personal page
      _box.read('name'),
      _box.read('email'),
      _box.read('number'),
      _box.read('birthDate'),
      _box.read('martialStatus'),
      _box.read('currentStatus'),
      _box.read('permanentStatus'),

      ///qualification page
      _box.read('degree'),
      _box.read('percentage'),
      _box.read('year'),
      _box.read('university'),

      ///Employement page
      _box.read('companyName'),
      _box.read('lastSalary'),
      _box.read('workedTime'),
      _box.read('jobResponsibility'),
      _box.read('industryType'),

      ///KYC page
      _box.read('aadhar'),
      _box.read('pan'),
      ///Password
      password.text,

      image: image,
    );
    //print()
    if(apiResponse!=null){

      if(apiResponse.status=='success'){
        Get.offAll(() => const BottomNavPage());
        _box.write('isCompanyLogin', true);
        Get.snackbar('Registered successfully', apiResponse.message.toString(),backgroundColor: Colors.white);
      }
      else if(apiResponse.status =='false'){
        Get.back();
        Get.snackbar('Failed', apiResponse.message.toString());
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