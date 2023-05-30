import 'package:flutter/material.dart';

import '../styles/app_colors.dart';


class Saved extends StatelessWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       // mainAxisAlignment: MainAxisAlignment.start,
        children: [
         // const Text('    View your saved jobs here',style: TextStyle(fontSize: 16)),
         //const SizedBox(height: 5,),
          Expanded(
              child: ListView.builder(
                itemCount: 10,
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
                      margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
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
                              Icon(Icons.payments_outlined,color: Colors.grey,size: 20),
                              Text('   ₹  10,000 - 15,000')
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(Icons.account_tree_outlined,color: Colors.grey,size: 20),
                              Text('   Contractual  &  On roll')
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(Icons.account_balance_outlined,color: Colors.grey,size: 20),
                              Text('   Mechanical Engineer')
                            ],
                          ),
                          const SizedBox(height: 8,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(Icons.star,color: Colors.orange),
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
                          const Text('2 days ago')

                        ],
                      ),
                    ),
                  );
                },
              ),
          )
        ],
      ),
    );
  }
}
