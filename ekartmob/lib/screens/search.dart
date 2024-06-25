import 'dart:math';

import 'package:ekartmob/components/filterScreen.dart';
import 'package:ekartmob/components/productbox.dart';
import 'package:ekartmob/components/textComponent.dart';
import 'package:ekartmob/models/categories.dart';
import 'package:ekartmob/models/products.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
   String searchFieldvalue = "";
   bool searched = false;
  @override
  Widget build(BuildContext context) {

    TextEditingController searchvalue = TextEditingController();
    List categoryList = categoriesList;
    var int = Random().nextInt(categoryList.length - 1);

    final List<String> categorySelected =
        (categoryList[int] as Map<dynamic, dynamic>)
            .entries
            .map((entry) => '${entry.key}: ${entry.value}')
            .toList();

    List value = categorySelected[0].split(': ');
   

    List<Widget> ProductWidgets = products.where((product) {
      return product['category'] == value[1];
    }).map((product) {
      return Container(
        height: 100,
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

    List<Widget> SearchedProductWidgets = products.where((product) {
      return product['productName'].toString().toLowerCase().contains(searchFieldvalue.toLowerCase());
    }).map((product) {
      return Container(
        height: 100,
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

    void getValue(String value) {
      setState(() {
        searched = true;    
        searchFieldvalue = value;
      });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
        ),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Search ',
                  style: TextStyle(fontSize: 21),
                ),
                SizedBox(
                  width: 240,
                  height: 50,
                  child: text_Field(
                    controller: searchvalue,
                    hintText: '',
                    obscureText: false,
                    getValue: (value) => getValue(value), 
                  ),
                ),
                IconButton(
                    onPressed: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return const Filterscreen();
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.sort,
                      size: 20,
                    ))
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            (searched && searched == true)
                ? Center(
                    child: Text(
                    "Search results for ' $searchFieldvalue '",
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ))
                : const Center(
                    child: Text("Search or Filter products",
                        style: TextStyle(fontWeight: FontWeight.w700)),
                  ),
            const SizedBox(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.75,
                ),
                itemCount: searched == true
                    ? (SearchedProductWidgets.length >= 10
                        ? 10
                        : SearchedProductWidgets.length)
                    : (ProductWidgets.length >= 10
                        ? 10
                        : ProductWidgets.length),
                itemBuilder: (context, index) {
                  return searched == true
                      ? SearchedProductWidgets[index]
                      : ProductWidgets[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
