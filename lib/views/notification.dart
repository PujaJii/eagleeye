import 'package:eagleeye/styles/app_colors.dart';
import 'package:flutter/material.dart';


class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            const Text('     Notification',style: TextStyle(fontSize: 18)),
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
                        child: const Center(child: Icon(Icons.notification_important_outlined)),
                      ),
                      title: const Text('Profile Update'),
                      subtitle: const Text('You haven\'t upload your CV yet please upload for better response ...',overflow: TextOverflow.ellipsis),

                    );
                  },))
          ],
        ),
      ),
    );
  }
}
