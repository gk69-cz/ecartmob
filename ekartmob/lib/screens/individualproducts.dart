import 'package:ekartmob/components/Footer.dart';
import 'package:ekartmob/components/imageBox.dart';
import 'package:ekartmob/components/reviewstar.dart';
import 'package:ekartmob/components/specifications.dart';
import 'package:ekartmob/components/subcategory%20Elements/blockButton.dart';
import 'package:ekartmob/models/products.dart';
import 'package:ekartmob/models/subCategorymodel.dart';
import 'package:flutter/material.dart';

class individualProduct extends StatelessWidget {
  final String productIdValue;

  individualProduct({super.key, required this.productIdValue});

  @override
  Widget build(BuildContext context) {
    final product = products.firstWhere(
      (product) => product['productId'] == productIdValue,
    );
    // Extract images
    final List<String> images = List<String>.from(product['images'] as List);
    final List<String> features = (product['features'] as Map<String, dynamic>)
        .entries
        .map((entry) => '${entry.key}: ${entry.value}')
        .toList();
    print(features);
    final List<Widget> imageWidgets = images.map((imageUrl) {
      return Container(
        child: Imagebox(
          ImageUrl: imageUrl,
        ),
      );
    }).toList();

    final List<Widget> Specify = images.map((imageUrl) {
      return Container(
        child: specifications(
          Specifications: product,
        ),
      );
    }).toList();

    var category = product['category'].toString();

    final varients = SubcategoryModel.iterator;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(toolbarHeight: 60, centerTitle: true, actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: IconButton(
            icon: const Icon(
              Icons.share_outlined,
              size: 30,
            ),
            onPressed: () {},
            color: Colors.grey.shade900,
          ),
        ),
      ]),
      body: ListView(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 28.0, left: 28.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //image screen
                        SizedBox(
                          height: 370,
                          width: 300,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: imageWidgets,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        //cost and icon
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //name of the product
                            Text(
                              product['productName'].toString(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),

                            IconButton(
                                onPressed: () {
                                  print("fav");
                                },
                                icon: Icon(Icons.favorite_outline_sharp))
                          ],
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Reviewstar(reviewstar: product['rating'] as double),
                            SizedBox(
                              width: 10,
                            ),
                            Text(product['rating'].toString()),
                            SizedBox(
                              width: 20,
                            ),
                            Text("|  " +
                                product['reviewsCount'].toString() +
                                " Reviews")
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        //margin
                        Divider(
                          thickness: 1.0,
                          color: Colors.grey.shade200,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        //description
                        Text(
                          product['description'].toString() +
                              "  " +
                              product['description'].toString() +
                              "  " +
                              product['description'].toString() +
                              "  " +
                              product['description'].toString() +
                              "  " +
                              product['description'].toString(),
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey.shade500),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        Text(
                          'Specifications',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: features
                              .map((feature) => Text(
                                    feature,
                                    style: TextStyle(
                                        fontSize: 19, color: Colors.black38),
                                  ))
                              .toList(),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        //dynamic things as per the sub category
                      ]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Footer(
                Cost: product['price'].toString(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
