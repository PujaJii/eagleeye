import 'package:eagleeye/styles/app_colors.dart';
import 'package:flutter/material.dart';


class Jobs extends StatelessWidget {
  const Jobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Messeges form HR'),
          const SizedBox(height: 5,),
          Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                      width: 50,
                      height: 50,
                    decoration:  BoxDecoration(
                        color: AppColors.themeColorLight,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Center(child: Text('Z')),
                  ),
                  title: const Text('Zeywerk services'),
                  subtitle: const Text('Your are shortlisted for a walk in interview...',overflow: TextOverflow.ellipsis),

                );
              },))
        ],
      ),
    );
  }
}
