import 'dart:async';

import 'package:eagleeye/views/company_views/post_job.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../styles/app_colors.dart';


class CompanyHome extends StatelessWidget {
  final int initIndex;

  const CompanyHome(this.initIndex, {Key? key}) : super(key: key);
  // const CompanyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var logoImgName   =''.obs;
    var logoFilePath  =''.obs;
    var coverImgName  =''.obs;
    var coverFilePath =''.obs;

    final box = GetStorage();
    int initIndex = 0;
    final GlobalKey<RefreshIndicatorState> refreshIndicatorKey =
    GlobalKey<RefreshIndicatorState>();

    final GlobalKey<RefreshIndicatorState> refreshIndicatorKey1 =
    GlobalKey<RefreshIndicatorState>();
    //box.read('token');
    //ProfileWaitController profileWaitController = Get.find();
    // JobListController jobListController = Get.put(JobListController());
    // DeleteJobController deleteJobController = Get.put(DeleteJobController());
    // EditProfileController editProfileController = Get.put(EditProfileController());
    Future<void> pullRefresh(var refreshIndicatorKey, int ind) async {
     // jobListController.getJobList();
     // jobListController.getProfile();
      initIndex = ind;
    }

    Future<bool> showExitPopup() async {
      return await showDialog( //show confirm dialogue
        //the return value will be from "Yes" or "No" options
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Exit App'),
          content: const Text('Do you want to exit?'),
          actions:[
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(false),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.themeColor)),
              child:const Text('No',style: TextStyle(color: Colors.white)),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.themeColor)),
              child:const Text('Yes',style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      )??false; //if showDialog had returned null, then return false
    }


    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        body:
        // GetX<JobListController> (initState: (context) {
        //   jobListController.getJobList();
        //   jobListController.getProfile();
        // }, builder: (controller) {
        //   if (controller.isLoading.value) {
        //     return  const Center(
        //         child: CircularProgressIndicator(color: AppColors.themeColor,));
        //   } else {
          //  return
          SafeArea(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    //const SizedBox(height: 25,),
                    Expanded(
                      child: DefaultTabController(
                        length: 2,
                        initialIndex: initIndex,
                        child: Column(
                          children: [
                            const TabBar(
                              labelColor: Colors.black,
                              labelStyle: TextStyle(fontSize: 16),
                              indicatorColor: AppColors.themeColorDark,
                              indicatorSize: TabBarIndicatorSize.tab,
                              //indicatorWeight: 3,
                              tabs: [
                                Tab(
                                  text :  'Jobs List',
                                ),
                                Tab(
                                  text :  'Profile',
                                ),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [

                                  ///1nd tab_______________________

                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: RefreshIndicator(
                                            key: refreshIndicatorKey,
                                            onRefresh: () {
                                              return pullRefresh(refreshIndicatorKey,0);
                                            },
                                            color: AppColors.themeColor,
                                            child:
                                            // controller.list.isEmpty?
                                            // Container(
                                            //   child: const Center(child: Text('No Jobs posted yet...')),
                                            // ):
                                            ListView.builder(
                                              itemCount : 10,
                                              padding: const EdgeInsets.only(bottom: 100),
                                              itemBuilder: (context, index) {
                                                return InkWell(
                                                  onTap: () {
                                                   // Get.to(()=> const JobDetailsPage());
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets.symmetric(
                                                        horizontal: 20, vertical: 15),
                                                    margin: const EdgeInsets.all(7),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(5),
                                                        border: Border.all(color: Colors.grey[300]!)),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          crossAxisAlignment: CrossAxisAlignment.end,
                                                          children: [
                                                            const Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Text('jobTitle!',
                                                                    style: TextStyle(
                                                                        fontSize: 17,
                                                                        color: Colors.blueAccent)),
                                                              ],
                                                            ),
                                                            Container(
                                                              height: 35,
                                                              width: 35,
                                                              decoration: BoxDecoration(
                                                                  image: const DecorationImage(
                                                                      image: AssetImage(
                                                                          'assets/images/company_logo.png')),
                                                                  borderRadius: BorderRadius.circular(5),
                                                                  color: Colors.grey),
                                                            )
                                                          ],
                                                        ),
                                                        const Row(
                                                          children: [
                                                            // controller.list[index].jobRequirements == ''|| controller.list[index].jobRequirements == null?
                                                            // const Text('',
                                                            //     style:  TextStyle(color: Colors.grey)):
                                                            Expanded(child: Text('jobRequirements')),
                                                          ],
                                                        ),
                                                        const Row(
                                                          children: [
                                                            Icon(Icons.location_on_outlined,
                                                                color: Colors.grey, size: 15),
                                                            // controller.list[index].jobLocation== ''|| controller.list[index].jobLocation == null?
                                                            // const Text('Not Disclosed!!',
                                                            //     style:  TextStyle(color: Colors.grey)):
                                                            Text('jobLocation',
                                                                style: TextStyle(color: Colors.grey)),
                                                          ],
                                                        ),
                                                        const Row(
                                                          children: [
                                                            Icon(Icons.account_balance_wallet_sharp,
                                                                color: Colors.grey, size: 15),
                                                            Text('   ₹ salaryMin - salaryMax',
                                                                style: TextStyle(color: Colors.grey)),
                                                          ],
                                                        ),
                                                        const Text('Requirements : '),
                                                        SizedBox(
                                                          height: 40,
                                                          child: ListView.builder(
                                                            itemCount: 1,
                                                            padding: EdgeInsets.zero,
                                                            scrollDirection: Axis.horizontal,
                                                            itemBuilder: (context, ind) {
                                                              return Container(
                                                                margin: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                                                                padding: const EdgeInsets.all(4),
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(4),
                                                                    color: Colors.grey[200]),
                                                                child: const Row(
                                                                  children: [
                                                                    Icon(Icons.access_time, size: 15),
                                                                    Text(
                                                                      '   jobType',
                                                                      style: TextStyle(fontSize: 13),
                                                                    )
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            const Text('Post date : PostedAt'),
                                                            InkWell(
                                                              onTap: () {
                                                                showAnimatedDialog(context: context,
                                                                    animationType: DialogTransitionType.scale,
                                                                    curve: Curves.fastOutSlowIn,
                                                                    // duration: const Duration(seconds: 1),
                                                                    barrierDismissible: true,
                                                                    builder: (BuildContext context) {
                                                                      return AlertDialog(
                                                                        title: const Text("Delete this job post!!",
                                                                            style: TextStyle(color: Colors.redAccent)),
                                                                        content: const Text(
                                                                            "Are you sure you want to delete this job?"),
                                                                        actions: [
                                                                          ElevatedButton(
                                                                            onPressed: () {
                                                                             // deleteJobController.deleteRequest(controller.list[index].id.toString());
                                                                              Navigator.of(context).pop();
                                                                            },
                                                                            style: ButtonStyle(
                                                                                backgroundColor: MaterialStateProperty.all(
                                                                                    Colors.redAccent)),
                                                                            child: const Text('Delete',style: TextStyle(color: Colors.white)),
                                                                          ),
                                                                          ElevatedButton(
                                                                            style: ButtonStyle(
                                                                                backgroundColor: MaterialStateProperty.all(
                                                                                    Colors.grey)),
                                                                            onPressed: () {
                                                                              Navigator.of(context).pop();
                                                                            },
                                                                            child: const Text("Cancel",style: TextStyle(color: Colors.white)),
                                                                          )
                                                                        ],
                                                                      );
                                                                    }
                                                                );
                                                              },
                                                              child: const  Row(
                                                                children: [
                                                                  Icon(Icons.delete_forever_sharp ,color: Colors.pink),
                                                                  //Text('Delete'),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          )
                                      ),
                                    ],
                                  ),

                                  ///2nd tab_______________________

                                  // controller.userProfile.isEmpty?
                                  // Column(
                                  //   crossAxisAlignment: CrossAxisAlignment.center,
                                  //   mainAxisAlignment: MainAxisAlignment.center,
                                  //   children: [
                                  //     Container(
                                  //         child: const Center(child: Text('Server Error....!!'))
                                  //     ),
                                  //     Center(
                                  //       child: ElevatedButton(
                                  //           onPressed: () async{
                                  //             debugPrint(box.read('token'));
                                  //             Get.dialog(const Center(
                                  //                 child: CircularProgressIndicator()),
                                  //                 barrierDismissible: false);
                                  //             await box.remove('token');
                                  //             Timer(const Duration(seconds: 2),() {
                                  //               //Get.offAll(()=> const SplashScreen());
                                  //             },);
                                  //
                                  //           }, child: const Text('Log out')),
                                  //     ),
                                  //   ],
                                  // ):
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: RefreshIndicator(
                                          key: refreshIndicatorKey1,
                                          onRefresh: () {
                                            return pullRefresh(refreshIndicatorKey1,1);
                                          },
                                          color: AppColors.themeColor,
                                          child: SingleChildScrollView(
                                            physics: const AlwaysScrollableScrollPhysics(),
                                            child: Column(
                                              crossAxisAlignment : CrossAxisAlignment.start,
                                              children: [
                                                //const SizedBox(height: 20),
                                                Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    // controller.userProfile[0].coverImageFilePath == null?
                                                    // InkWell(
                                                    //   onTap: () {
                                                    //    // Get.to(()=>  UploadImage(imageName: coverImgName,imageFile:coverFilePath, type: 'cover',));
                                                    //     //uploadImage(coverImgName,coverFilePath);
                                                    //   },
                                                    //   child: Container(
                                                    //     height: 150,
                                                    //     width: double.infinity,
                                                    //     margin: const EdgeInsets.only(bottom: 50),
                                                    //     decoration: BoxDecoration(
                                                    //       color: Colors.grey[300],
                                                    //     ),
                                                    //     alignment: Alignment.bottomRight,
                                                    //     child: Container(
                                                    //         width: 40,
                                                    //         height: 40,
                                                    //         margin: const EdgeInsets.only(right: 10,bottom: 10),
                                                    //         decoration: BoxDecoration(
                                                    //             color:Colors.white54,
                                                    //             borderRadius: BorderRadius.circular(25)),
                                                    //         child: const Icon(Icons.edit,size: 20,color: AppColors.themeColor,)),
                                                    //   ),
                                                    // ):
                                                    InkWell(
                                                      onTap:(){
                                                        //Get.to(()=> UploadImage(imageName: coverImgName,imageFile:coverFilePath, type: 'cover',));
                                                        // uploadImage(coverImgName,coverFilePath);
                                                      },
                                                      child: Container(
                                                        height: 150,
                                                        width: double.infinity,
                                                        margin: const EdgeInsets.only(bottom: 50),
                                                        decoration: BoxDecoration(
                                                            color: Colors.grey[300],
                                                            // image: DecorationImage(
                                                            //     image: NetworkImage(
                                                            //         '${AppConstants.baseUrl}/getimage/${controller.userProfile[0].coverImageFilePath}'),fit: BoxFit.cover)
                                                        ),
                                                        alignment: Alignment.bottomRight,
                                                        child: Container(
                                                            width: 40,
                                                            height: 40,
                                                            margin: const EdgeInsets.only(right: 10,bottom: 10),
                                                            decoration: BoxDecoration(
                                                                color:Colors.white54,
                                                                borderRadius: BorderRadius.circular(25)),
                                                            child: const Icon(Icons.edit,size: 20,color: AppColors.themeColor,)),
                                                      ),
                                                    ),
                                                    // controller.userProfile[0].logoFilePath == null?
                                                    // Positioned(
                                                    //   top: 90,
                                                    //   child: InkWell(
                                                    //     onTap:() {
                                                    //       //Get.to(()=> UploadImage(imageName: logoImgName,imageFile: logoFilePath, type: 'logo',));
                                                    //       //uploadImage(logoImgName,logoFilePath);
                                                    //     },
                                                    //     child: Center(
                                                    //       child: Container(
                                                    //         height: 100,
                                                    //         width: 100,
                                                    //         decoration: BoxDecoration(
                                                    //             color: Colors.grey[200],
                                                    //             borderRadius: BorderRadius.circular(50)),
                                                    //         child: const Icon(Icons.person,size: 30),
                                                    //       ),
                                                    //     ),
                                                    //   ),
                                                    // ):
                                                    Positioned(
                                                      top: 90,
                                                      child: InkWell(
                                                        onTap: (){
                                                        //  Get.to(()=> UploadImage(imageName: logoImgName,imageFile: logoFilePath, type: 'logo',));
                                                          //uploadImage(logoImgName,logoFilePath);
                                                        },
                                                        child: Center(
                                                          child: Container(
                                                            height: 100,
                                                            width: 100,
                                                            margin: const EdgeInsets.only(left: 10,bottom: 10),
                                                            decoration: BoxDecoration(
                                                                color: Colors.grey[200],
                                                                // image:
                                                                // DecorationImage(
                                                                //     image:
                                                                //     NetworkImage(
                                                                //         '${AppConstants.baseUrl}/getimage/${controller.userProfile[0].logoFilePath}'),fit: BoxFit.cover),
                                                                borderRadius: BorderRadius.circular(50)),
                                                            alignment: Alignment.bottomRight,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      bottom: 13,
                                                      child: InkWell(
                                                        onTap:(){
                                                         // Get.to(()=> UploadImage(imageName: logoImgName,imageFile: logoFilePath, type: 'logo',));
                                                          // uploadImage(logoImgName,logoFilePath);
                                                        },
                                                        child: Container(
                                                            width: 30,
                                                            height: 30,
                                                            margin: const EdgeInsets.only(left: 80),
                                                            decoration: BoxDecoration(
                                                                color: Colors.grey[300],
                                                                borderRadius: BorderRadius.circular(15)),
                                                            child: const Icon(Icons.edit,size: 17,color: AppColors.themeColor,)),
                                                      ),
                                                    ),
                                                    // Container(
                                                    //   width: double.infinity,
                                                    //   color: Colors.red,
                                                    //   height: 50,)
                                                  ],
                                                ),
                                                //const SizedBox(height: 5,),
                                                const Center(child: Text('name',textAlign: TextAlign.center,style: TextStyle(fontSize: 18))),
                                                const Center(child: Text('email',style: TextStyle(fontSize: 15),textAlign: TextAlign.center)),
                                                //Text(box.read('loginEmail'),style: const TextStyle(fontSize: 15)),
                                                const SizedBox(height: 5,),
                                                Center(
                                                  child: ElevatedButton(
                                                      onPressed: () async{
                                                        debugPrint(box.read('token'));
                                                        Get.dialog(const Center(
                                                            child: CircularProgressIndicator()),
                                                            barrierDismissible: false);
                                                        await box.remove('token');
                                                        Timer(const Duration(seconds: 2),() {
                                                         // Get.offAll(()=> const SplashScreen());
                                                        },);

                                                      }, child: const Text('Log out')),
                                                ),
                                                const SizedBox(height: 5),
                                                Container(
                                                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                                                  margin: const EdgeInsets.all(8),
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(5),
                                                      border: Border.all(color: Colors.grey[300]!)
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          const Row(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                                              //Icon(Icons.person_pin),
                                                              Text('  Company Details'),
                                                            ],
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                             // Get.to(()=> const EditCompanyDetails());
                                                            },
                                                            child: const Row(
                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                              children: [
                                                                Icon(Icons.edit,color: AppColors.themeColorDark,size: 16),
                                                                Text(' Edit',style: TextStyle(color: AppColors.themeColorDark),),
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      const SizedBox(height: 10,),
                                                      const Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding: EdgeInsets.all(0.0),
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Icon(Icons.account_balance,size: 17),
                                                                      Expanded(child: Text('  Address:')),
                                                                    ],
                                                                  ),
                                                                  Text('       address',style: TextStyle(color: Colors.grey)),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 5,),
                                                          Expanded(
                                                            child: Padding(
                                                              padding: EdgeInsets.all(0.0),
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Icon(Icons.account_balance,size: 17),
                                                                      Expanded(child: Text('  Industry Type:')),
                                                                    ],
                                                                  ),
                                                                  Text('       industry',style: TextStyle(color: Colors.grey)),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 12,),
                                                      const Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding: EdgeInsets.all(0.0),
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Icon(Icons.account_balance,size: 17),
                                                                      Expanded(child: Text('  City')),
                                                                    ],
                                                                  ),
                                                                  Text('       city',style: TextStyle(color: Colors.grey)),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 5,),
                                                          Expanded(
                                                            child: Padding(
                                                              padding: EdgeInsets.all(0.0),
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Icon(Icons.account_balance,size: 17),
                                                                      Expanded(child: Text('  Company man power')),
                                                                    ],
                                                                  ),
                                                                  Text('       companySize',style: TextStyle(color: Colors.grey)),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 12,),
                                                      const Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding: EdgeInsets.all(0.0),
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Icon(Icons.account_balance,size: 17),
                                                                      Expanded(child: Text('  State')),
                                                                    ],
                                                                  ),
                                                                  Text('       state',style: TextStyle(color: Colors.grey)),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 5,),
                                                          Expanded(
                                                            child: Padding(
                                                              padding: EdgeInsets.all(0.0),
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Icon(Icons.account_balance,size: 17),
                                                                      Expanded(child: Text('  Founded year')),
                                                                    ],
                                                                  ),
                                                                  Text('       foundedYear',style: TextStyle(color: Colors.grey)),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 12,),
                                                      const Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding: EdgeInsets.all(0.0),
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Icon(Icons.account_balance,size: 17),
                                                                      Expanded(child: Text('  Pin code:')),
                                                                    ],
                                                                  ),
                                                                  Text('       zipCode',style: TextStyle(color: Colors.grey)),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 5,),
                                                          Expanded(
                                                            child: Padding(
                                                              padding: EdgeInsets.all(0.0),
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Icon(Icons.account_balance,size: 17),
                                                                      Expanded(child: Text('  Country')),
                                                                    ],
                                                                  ),
                                                                  Text('       country',style: TextStyle(color: Colors.grey)),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 20),
                                                Row(
                                                  children: [
                                                    const SizedBox(width: 20,),
                                                    SizedBox(
                                                        height: 17,
                                                        width: 17,
                                                        child: Image.asset('assets/images/globe.png')),

                                                    const Text('  Website :'),
                                                  ],
                                                ),
                                                const Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 43.0),
                                                  child: Text('yourwebsite.com',),
                                                ),
                                                const SizedBox(height: 30,),
                                                const Row(
                                                  children: [
                                                    SizedBox(width: 20,),
                                                    Icon(Icons.recent_actors_sharp,size: 20,),
                                                    Text('  About Us :'),
                                                  ],
                                                ),
                                                const Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 46.0),
                                                  child: Text('about your company',),
                                                ),
                                                const SizedBox(height: 100,),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        //   }
        // }),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            Get.to(()=> const JobPostPage());
          },),
      ),
    );
  }
}