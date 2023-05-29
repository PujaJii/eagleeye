import 'package:flutter/material.dart';

import '../styles/app_colors.dart';


class BottomNavPage extends StatelessWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Row(
          children:  [
             const Text('Eagle Eye'),
             const Text('\$',style: TextStyle(color: Colors.amber)),
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
      body: Container(),
      drawer: const Drawer(),
    );
  }
}
