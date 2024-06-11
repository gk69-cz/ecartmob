import 'package:ekartmob/components/productbox.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
       body: ListView(children: [
          Column(
          children: [
            Container(
              height: 200,
              width: 380,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/banner.jpg'))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Row(
                children: [
                  Container(
                    width: 390,
                    height: 110,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Sales Product ',
                    style: TextStyle(
                        fontSize: 15,
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
            //item boxes start
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 18, right: 17),
              child: Row(
                children: [
                  Productbox(),
                  const SizedBox(width:7),
                  Productbox(),
                ],
              ),
            ),
            
          ],
        ),
        
        ],)
      ),
    );
  }
}
