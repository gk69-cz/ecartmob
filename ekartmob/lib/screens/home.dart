import 'dart:math';

import 'package:ekartmob/components/categorybox.dart';
import 'package:ekartmob/components/productbox.dart';
import 'package:ekartmob/models/categories.dart';
import 'package:ekartmob/models/products.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List categoryList = categoriesList;
var int = Random().nextInt(categoryList.length -1);

final List<String> categorySelected = (categoryList[int] as Map<dynamic, dynamic>)
        .entries
        .map((entry) => '${entry.key}: ${entry.value}')
        .toList();

List value = categorySelected[0].split(': ');

List<Widget> ProductWidgets = products.where((product) {
 
      return product['category'] == value[1];
    }).map((product) {

      return Container(
        padding: const EdgeInsets.all(10.0),
        child: Productbox(
          productName: product['productName'].toString(),
          description: product['description'].toString(),
          price: product['price'].toString(),
          rating: product['rating'].toString(),
          reviewsCount: product['reviewsCount'].toString(),
          productId: product['productId'].toString(),
        ),
      );
    }).toList();


    List<Widget> categoryWidgets = categoriesList.map((category) {
      return Container(
        padding: const EdgeInsets.all(0.0), // Add padding for spacing
        child: Categorybox(
          CategoryName: category['categoryName'].toString(),
          categoryImageUrl: category['categoryImageUrl'].toString(),
          bannerPath: category['BannerPath'].toString(),
          location: 'Home',
        ),
      );
    }).toList();
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
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
                      SizedBox(
                        width: 390,
                        height: 110,
                        child: Padding(
                          padding: const EdgeInsets.only(left:8.0,right: 8.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              height: 160,
                              color: Colors.transparent,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 10.0, left: 9.0),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: categoryWidgets),
                              ),
                            ),
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
                        ),)
                  
                      
                    ],
                  ),
                ),
                //item boxes start
                 Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                height: 280,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: ProductWidgets,
                  ),
                ),
              ),
            ),
          ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
