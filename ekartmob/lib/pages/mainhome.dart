import 'package:ekartmob/screens/allcategorys.dart';
import 'package:ekartmob/screens/emptycart.dart';
import 'package:ekartmob/screens/emptywishlist.dart';
import 'package:ekartmob/screens/home.dart';
import 'package:ekartmob/screens/profile.dart';
import 'package:ekartmob/screens/search.dart';
import 'package:flutter/material.dart';

class Mainhome extends StatefulWidget {
  const Mainhome({super.key});

  @override
  State<Mainhome> createState() => _MainhomeState();
}

class _MainhomeState extends State<Mainhome> {
  int myIndex = 0;
  String appBar = 'EasyCart';
  List<Widget> widgetList = [
    const Home(),
    const categories(),
     const Search(),
    Profile(),
 
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow.shade800,
          toolbarHeight: 60,
          centerTitle: myIndex != 0 ? false:true,
          title: Text(appBar),
          actions: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Badge(
                label: const Text(
                  '1',
                  style: TextStyle(fontSize: 10),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                      color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Emptycart()),
                    );
                  },
                 color: Colors.white70,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Badge(
                label: const Text('1'),
                child: IconButton(
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Emptywishlist()),
                    );
                  },
                 
                ),
              ),
            )
          ],
          // shape: const RoundedRectangleBorder(
          //     borderRadius: BorderRadius.only(
          //         bottomLeft: Radius.circular(15),
          //         bottomRight: Radius.circular(15))),
        ),
        bottomNavigationBar: 
        
        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.yellow.shade800,
          fixedColor: Colors.white,
          onTap: (index) {
            setState(() {
              myIndex = index;
              if (index == 0) {
                appBar = 'EasyCart';
              } else if (index == 1) {
                appBar = 'Shop';
              } else if (index == 2) {
                appBar = 'Products';
              } else if (index == 3) {
                appBar = 'Profile';
              }
            });
          },
          currentIndex: myIndex,
          items: const [
    
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.production_quantity_limits_sharp),
                label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(Icons.inventory_2_outlined),
                label: 'Products',),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: 'Profile'),
          ],
        ),
        backgroundColor: Colors.white12,
        body: Padding(
          
          padding: const EdgeInsets.only(top: 0.0),
          child: Center(child: Container(
            decoration: BoxDecoration(
              color: Colors.white70
            ),
          
           child:  widgetList[myIndex],
          )),
        ));
  }
}
