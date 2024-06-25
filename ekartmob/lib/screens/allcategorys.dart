import 'package:ekartmob/components/categorybox.dart';
import 'package:ekartmob/models/categories.dart';
import 'package:flutter/material.dart';

class categories extends StatelessWidget {
  const categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> categoryWidgets = categoriesList.map((category) {
      return Container(
        padding: const EdgeInsets.all(0.0), // Add padding for spacing
        child: Categorybox(
          CategoryName: category['categoryName'].toString(),
          categoryImageUrl: category['categoryImageUrl'].toString(),
          bannerPath: category['BannerPath'].toString(),
          location: 'Categories',
        ),
      );
    }).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 280,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(13, 15)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/category.jpg'))),
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
                  'Categories ',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: GridView.count(
              shrinkWrap: true, // Allow the GridView to adapt to its content
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: categoryWidgets,
            ),
          )
        ],
      ),
    );
  }
}
