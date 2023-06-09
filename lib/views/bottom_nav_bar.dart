import 'package:eagleeye/views/home.dart';
import 'package:eagleeye/views/jobs.dart';
import 'package:eagleeye/views/profile.dart';
import 'package:eagleeye/views/saved_jobs.dart';
import 'package:eagleeye/views/search_page.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/app_colors.dart';
import 'notification.dart';


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
          title: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Eagle Eye',
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: '\$',
                  style: TextStyle(color: Colors.amber),
                ),
                TextSpan(
                  text: ' Career',
                  style: TextStyle(color: AppColors.themeColor2),
                ),
              ],
            ),
          ),

          actions: [
            IconButton(onPressed: () {
              Get.to(()=> const SearchPage());
            }, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {
              Get.to(()=> const NotificationPage());
            }, icon: const Icon(Icons.notifications_none,)),
            const SizedBox(width: 10,)
          ],
        ),
          body: Center(
            child: pages[selectedIndex.value],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                 DrawerHeader(
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.arrow_back),
                       // title: const Text('Go Back'),
                        onTap: () {
                          Navigator.pop(context); // Closes the drawer
                        },
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
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
