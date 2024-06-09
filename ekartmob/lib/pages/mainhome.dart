import 'package:ekartmob/screens/emptycart.dart';
import 'package:ekartmob/screens/emptywishlist.dart';
import 'package:ekartmob/screens/home.dart';
import 'package:ekartmob/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mainhome extends StatefulWidget {
  Mainhome({super.key});

  @override
  State<Mainhome> createState() => _MainhomeState();
}

class _MainhomeState extends State<Mainhome> {
  final TextEditingController _searchController = TextEditingController();
  int myIndex = 0;
  String appBar = 'EasyCart';
  List<Widget> widgetList =  [
    Home(),
    Emptycart(),
    Emptywishlist(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          centerTitle: true,
          title: Text(appBar),
          actions: [
            IconButton(onPressed:() {

            } , icon: const Icon(Icons.circle_notifications_outlined))
          ],
          backgroundColor: const Color.fromARGB(112, 117, 117, 117),
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)
            )
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index){
            setState(() {
                myIndex = index;
                if(index == 0){
                  appBar='EasyCart';
                }else if (index == 1){
                   appBar='Cart';
                }else if (index == 2){
                   appBar='Wishlist';
                }else if (index == 3){
                   appBar='Profile';
                }
            });
          },
          currentIndex: myIndex,
          items: [
             BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.luggage_outlined),
            label: 'cart'
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Wishlist'
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile'
            ),
        ]
        ,),
        backgroundColor: Colors.grey.shade100,
        body: Padding(
      
          padding: const EdgeInsets.only(top:8.0),
          child: Center(
              child:widgetList[myIndex]
          ),
        )
      
        
        )
    );
  }
}
