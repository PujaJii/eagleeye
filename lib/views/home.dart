import 'package:eagleeye/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var selectedItem = [].obs;
    void addItem(int value) {
      selectedItem.add(value);
    }
    void removeItem(int value) {
      selectedItem.remove(value);
    }

    return Scaffold(
      body:  Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const SizedBox(height: 10,),
                const Text('     Welcome back Divya!!',style: TextStyle(fontSize: 17)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                        padding: EdgeInsets.only(left: 20, top: 25),
                        child: Text('Recently Viewed',style: TextStyle(fontSize: 15),)),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 10),
                      child: InkWell(
                          onTap: () {
                           // Get.to(() =>  SeeMoreVideo());
                          },
                          child: const Text(
                            'See more',
                            style: TextStyle(
                                fontSize: 12,),
                          )),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                SizedBox(
                    height: 210,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      padding: const EdgeInsets.only(left: 10),
                      itemBuilder: (context, index) {
                        return InkWell(
                          child: Container(
                            width: 320,
                            height: 210,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                border: Border.all(color: Colors.grey[300]!)
                            ),
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.only(left: 15,top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:  CrossAxisAlignment.start,
                                      children: const [
                                        Text('Versatile services',
                                            style: TextStyle(
                                                fontSize: 17,
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
                                Row(
                                  children: const [
                                    Icon(Icons.payments_outlined,
                                        color: Colors.grey,size: 20),
                                    Text('   ₹  10,000 - 15,000')
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.account_tree_outlined,
                                        color: Colors.grey,size: 20),
                                    Text('   Contractual  &  On roll')
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.account_balance_outlined,
                                        color: Colors.grey,size: 20),
                                    Text('   Mechanical Engineer')
                                  ],
                                ),
                                const SizedBox(height: 8,),
                                Obx(
                                    ()=> InkWell(
                                    onTap: () {
                                      if (selectedItem.contains(index)) {
                                        removeItem(index);
                                      } else {
                                        addItem(index);
                                      }
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(
                                              backgroundColor:
                                              AppColors.themeColor,
                                              content: const Text(
                                                  'Saved Successfully!')));
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        selectedItem.contains(index)
                                            ? const Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                        )
                                            : const Icon(Icons.star_border_sharp),
                                        const SizedBox(width: 20,),
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
                                  ),
                                ),
                                const Text('2 days ago')

                              ],
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
                        TextStyle(fontSize: 15),
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
                                fontSize: 12),
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
                    padding: const EdgeInsets.only(left: 10),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 6),
                        child: InkWell(
                          onTap: () {

                          },
                          child: Container(
                            width: 320,
                            height: 230,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                border: Border.all(color: Colors.grey[300]!)
                            ),
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.only(left: 15,top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:  CrossAxisAlignment.start,
                                      children: const [
                                        Text('Versatile services',
                                            style: TextStyle(
                                                fontSize: 17,
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
                                Row(
                                  children: const [
                                    Icon(Icons.payments_outlined,
                                        color: Colors.grey,size: 20),
                                    Text('   ₹  10,000 - 15,000')
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.account_tree_outlined,
                                        color: Colors.grey,size: 20),
                                    Text('    Contractual  &  On roll')
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.account_balance_outlined,
                                        color: Colors.grey,size: 20),
                                    Text('   Mechanical Engineer')
                                  ],
                                ),
                                const SizedBox(height: 8,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Icon(Icons.star_border_sharp,
                                        color: Colors.orange),
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
                const SizedBox(height: 5,),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 5),
                      child: Text(
                        'Top Companies',
                        style: TextStyle(
                            fontSize: 16,
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
                                fontSize: 13),
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    padding: const EdgeInsets.only(left: 10),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 6),
                        child: InkWell(
                          onTap: () { },
                          child: Container(
                            width: 180,
                            height: 250,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 3,
                                    offset: Offset(
                                      0,
                                      3,
                                    ),
                                  )
                                ],
                              borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                border: Border.all(color: Colors.grey[300]!)
                            ),
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.only(left: 10,top: 0),
                            child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/company_logo.png'))),
                                ),
                                const SizedBox(height: 5,),
                                const Text(('Zetwerk')),
                                const SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.star,
                                      color: Colors.amber,size: 20,),
                                    Text('  4.6   |  165 Reviews')
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                const Text('Corporate'),
                                const SizedBox(height: 5,),
                                const Text('View Openings',style: TextStyle(color: AppColors.themeColor),),
                                const SizedBox(height: 10,),
                              ],
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
