import 'package:eagleeye/views/home.dart';
import 'package:eagleeye/views/jobs.dart';
import 'package:eagleeye/views/profile.dart';
import 'package:eagleeye/views/saved_jobs.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/app_colors.dart';


class BottomNavPage extends StatelessWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const HomePage(),
      const Saved(),
      const Jobs(),
      const Profile(),
    ];
    var selectedIndex =0.obs;
    return  Obx(
        ()=> Scaffold(
        appBar: AppBar(
          title: const Row(
            children:  [
               Text('Eagle Eye'),
               Text('\$',style: TextStyle(color: Colors.amber)),
               Text(' Career',style: TextStyle(color: AppColors.themeColor2)),
            ],
          ),
          actions: [
            IconButton(onPressed: () {

            }, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {

            }, icon: const Icon(Icons.notifications_none,)),
            const SizedBox(width: 10,)
          ],
        ),
          body: Center(
            child: pages[selectedIndex.value],
          ),
          drawer: const Drawer(),
          bottomNavigationBar:  FlashyTabBar(
              selectedIndex: selectedIndex.value,
              showElevation: true,
              onItemSelected: (index) {
                selectedIndex.value = index;
               // print(selectedIndex.value);
              },
              items: [
                FlashyTabBarItem(
                  icon: const Icon(Icons.home),
                  title: const Text('Home'),
                ),
                FlashyTabBarItem(
                  icon: const Icon(Icons.star),
                  title: const Text('Saved'),
                ),
                FlashyTabBarItem(
                  icon: const Icon(Icons.work_history_outlined),
                  title: const Text('jobs'),
                ),
                FlashyTabBarItem(
                  icon: const Icon(Icons.person),
                  title: const Text('Profile'),
                ),
              ],
            ),
      ),
    );
  }
}
