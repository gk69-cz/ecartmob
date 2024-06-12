import 'package:ekartmob/components/brandBox.dart';
import 'package:ekartmob/components/productbox.dart';
import 'package:ekartmob/models/brands.dart';
import 'package:ekartmob/models/products.dart';
import 'package:flutter/material.dart';

class Categoryscreen extends StatelessWidget {
  final String categoryName;
  final String bannerPath;

  const Categoryscreen(
      {super.key, required this.categoryName, required this.bannerPath});

  @override
  Widget build(BuildContext context) {
    List<Widget> brandWidgets = brandList.where((brand) {
      var categories = brand['categories'];
      return categories is Map && categories[categoryName] == true;
    }).map((brand) {
      return Container(
        padding: const EdgeInsets.all(0.0),
        child: Brandbox(
          brandName: brand['name'].toString(),
          ImageUrl: brand['imageUrl'].toString(),
        ),
      );
    }).toList();

    List<Widget> ProductWidgets = products.where((product) {
      return product['category'] == categoryName;
    }).map((brand) {
      print(brand);
      return Container(
        padding: const EdgeInsets.all(10.0),
        child: Productbox(
          productName: brand['productName'].toString(),
          description: brand['description'].toString(),
          price: brand['price'].toString(),
          rating: brand['rating'].toString(),
          reviewsCount: brand['reviewsCount:'].toString(),
        ),
      );
    }).toList();

    return Scaffold(
      backgroundColor: Colors.white,
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
      body: ListView(
        children: [
          Container(
            height: 200,
            width: 380,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.elliptical(13, 15)),
                image: DecorationImage(
                    fit: BoxFit.fitWidth, image: AssetImage(bannerPath))),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0, right: 10.0, top: 10.0),
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
                SizedBox(
                  height: 10,
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
          const SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 160,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: brandWidgets),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Just In',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  'See More',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
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
          const Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recomended for you',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
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
    );
  }
}
