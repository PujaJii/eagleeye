import 'package:eagleeye/styles/app_colors.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const SizedBox(height: 10,),
                const Text('     Welcome back Divya!!',style: TextStyle(fontSize: 18)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                        padding: EdgeInsets.only(left: 20, top: 25),
                        child: Text('Recently Viewed',style: TextStyle(fontSize: 18),)),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 10),
                      child: InkWell(
                          onTap: () {
                           // Get.to(() =>  SeeMoreVideo());
                          },
                          child: const Text(
                            'See more',
                            style: TextStyle(
                                fontSize: 15,),
                          )),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                SizedBox(
                    height: 230,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return InkWell(
                          child: Container(
                              width: 300,
                              height: 230,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                border: Border.all(color: Colors.grey[350]!)
                              ),
                              margin: const EdgeInsets.all(8),
                              child: const Column(
                              children: [],
                            ),
                          ),
                        );
                      },
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 15),
                      child: Text(
                        'Applies',
                        style:
                        TextStyle(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 8),
                      child: InkWell(
                          onTap: () {
                           // Get.to(BlogSeeMore());
                          },
                          child: const Text(
                            'See more',
                            style: TextStyle(
                                fontSize: 15),
                          )
                      ),
                    ),
                  ],
                ),
                // const SizedBox(height: 10,),
                SizedBox(
                  height: 230,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 6),
                        child: InkWell(
                          onTap: () {

                          },
                          child: Container(
                            width: 300,
                            height: 230,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                border: Border.all(color: Colors.grey[350]!)
                            ),
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Column(
                                      crossAxisAlignment:  CrossAxisAlignment.start,
                                      children: [
                                        Text('Versatile services',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: AppColors.themeColor2)),
                                        Text('Surat,Gujarat'),
                                      ],
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      margin: const EdgeInsets.only(right: 15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: AppColors.themeColorLight,
                                      ),
                                      child: const Center(child: Text('V',style: TextStyle(fontSize: 20),)),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.payments_outlined,color: Colors.grey,size: 20),
                                    Text('   ₹  10,000 - 15,000')
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.account_tree_outlined,color: Colors.grey,size: 20),
                                    Text('    Contractual  &  On roll')
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.account_balance_outlined,color: Colors.grey,size: 20),
                                    Text('   Mechanical Engineer')
                                  ],
                                ),
                                const SizedBox(height: 8,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Icon(Icons.star_border_sharp,color: Colors.orange),
                                    const SizedBox(width: 10,),
                                    SizedBox(
                                      width: 120,
                                      height: 30,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(5)))),
                                          onPressed: () {},
                                        child: const Text('Apply')),
                                    ),
                                    const SizedBox(width: 10,),
                                  ],
                                ),
                                const Text('2 days ago')

                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10,),
                const Divider(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        'Top Companies',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20, top: 8),
                      child: InkWell(
                          child:  Text(
                            'See more',
                            style: TextStyle(
                                fontSize: 15),
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 6),
                        child: InkWell(
                          onTap: () {
                            // Get.to(() =>  MyVideoView(
                            //     controller.bolgList[index].imgUrl!,
                            //     controller.bolgList[index].title!,
                            //     controller.bolgList[index].description!,
                            //     'img'
                            // ));
                          },
                          child: Container(
                            width: 150,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.lightBlueAccent,
                            ),
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.only(left: 10,top: 110),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20,)

                //Add widget here...

              ],
            ),
          ),

        ],
      ),
    );
  }
}
