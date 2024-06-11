import 'package:flutter/material.dart';

class Categoryscreen extends StatelessWidget {
  final String categoryName;
  const Categoryscreen({
    super.key,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 60,
            centerTitle: true,
            title: Text(categoryName),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.search,
                    size: 30,
                  ),
                  onPressed: () {
                    print("object");
                  },
                  color: Colors.grey.shade900,
                ),
              ),
            ]),
        body: Column(
          children: [
            Container(
              height: 200,
              width: 380,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/banner.jpg'))),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0, right: 10.0,top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top brands ',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  
                  Text(
                    'See More',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                    
                  ),
                
                ],
              ),
            ),
               Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                 height: 110,
                 color: Colors.white,
                 child: Padding(
                   padding: const EdgeInsets.only(right: 18.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 18.0),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Container(
                               height: 40,
                               width: 40,
                               color: Colors.grey.shade100,
                               child: const Icon(
                                 Icons.dashboard_customize_outlined,
                                 size: 30,
                               ),
                             ),
                             const SizedBox(
                               height: 6,
                             ),
                             const Text(
                               'Categories',
                               style: TextStyle(fontSize: 15),
                             )
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 28.0),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Container(
                               height: 40,
                               width: 40,
                               color: Colors.grey.shade100,
                               child: const Icon(
                                 Icons.airplane_ticket_outlined,
                                 size: 30,
                               ),
                             ),
                             const SizedBox(
                               height: 6,
                             ),
                             const Text(
                               'Flight',
                               style: TextStyle(fontSize: 15),
                             )
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 8.0),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Container(
                               height: 40,
                               width: 40,
                               color: Colors.grey.shade100,
                               child: const Icon(
                                 Icons.monetization_on_outlined,
                                 size: 30,
                               ),
                             ),
                             const SizedBox(
                               height: 6,
                             ),
                             const Text(
                               'Bills',
                               style: TextStyle(fontSize: 15),
                             )
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 8.0),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Container(
                               height: 40,
                               width: 40,
                               color: Colors.grey.shade100,
                               child: const Icon(
                                 Icons.battery_1_bar_outlined,
                                 size: 30,
                               ),
                             ),
                             const SizedBox(
                               height: 6,
                             ),
                             const Text(
                               'Electricity',
                               style: TextStyle(fontSize: 15),
                             )
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 8.0),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Container(
                               height: 40,
                               width: 40,
                               color: Colors.grey.shade100,
                               child: const Icon(
                                 Icons.phone_android,
                                 size: 30,
                               ),
                             ),
                             const SizedBox(
                               height: 6,
                             ),
                             const Text(
                               'Data Plan',
                               style: TextStyle(fontSize: 15),
                             )
                           ],
                         ),
                       )
                        ,Padding(
                         padding: const EdgeInsets.only(left: 8.0),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Container(
                               height: 40,
                               width: 40,
                               color: Colors.grey.shade100,
                               child: const Icon(
                                 Icons.phone_android,
                                 size: 30,
                               ),
                             ),
                             const SizedBox(
                               height: 6,
                             ),
                             const Text(
                               'Data Plan',
                               style: TextStyle(fontSize: 15),
                             )
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 8.0),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Container(
                               height: 40,
                               width: 40,
                               color: Colors.grey.shade100,
                               child: const Icon(
                                 Icons.phone_android,
                                 size: 30,
                               ),
                             ),
                             const SizedBox(
                               height: 6,
                             ),
                             const Text(
                               'Data Plan',
                               style: TextStyle(fontSize: 15),
                             )
                           ],
                         ),
                       )
                    ],
                   ),
                 ),
                                    ),
              ),
            ),
           
          ],
       
       
        ),
        );
  }
}
