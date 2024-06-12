import 'package:ekartmob/components/categorybox.dart';
import 'package:ekartmob/components/productbox.dart';
import 'package:ekartmob/helpers/iconhelpers.dart';
import 'package:ekartmob/models/categories.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> categoryWidgets = categoriesList.map((category) {
      return Container(
        padding: EdgeInsets.all(0.0), // Add padding for spacing
        child: Categorybox(
          CategoryName: category['categoryName'].toString(),
          iconValue: getIconFromString(category['icon'].toString()),
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
                    Container(
                      width: 390,
                      height: 110,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            height: 160,
                            color: Colors.white,
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
                    Productbox(
                      productName: 'TextBrand',
                      description: 'testing description',
                      price: 200.toString(),
                      rating: 9.toString(),
                      reviewsCount: 666.toString(),
                    ),
                    const SizedBox(width: 7),
                    Productbox(
                      productName: 'TextBrand',
                      description: 'testing description',
                      price: 200.toString(),
                      rating: 9.toString(),
                      reviewsCount: 666.toString(),
                    ),
                  ],
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
