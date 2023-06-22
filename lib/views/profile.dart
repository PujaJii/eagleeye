import 'dart:async';

import 'package:eagleeye/views/splash_select.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _box = GetStorage();
    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text('Keep your profile up to date to get better opportunities',style: TextStyle(fontSize: 16)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(Icons.edit_outlined),
              const SizedBox(width: 25,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50)),
              ),
            ],
          ),
          const SizedBox(height : 15),
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text('Personal details'),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text('Educational details'),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text('Professional details'),
          ),

          const Center(child: Text('Coming Soon...!')),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                Get.dialog(const Center(child: CircularProgressIndicator()),
                    barrierDismissible: false);
                _box.write('isUserLogin', false);
                Timer(const Duration(seconds: 2), () {
                  Get.offAll(()=> const SplashSelect());});
              }, child: const Text('Log Out')),
            ],
          )

        ],
      ),
    );
  }
}
