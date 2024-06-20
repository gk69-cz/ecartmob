import 'package:ekartmob/components/filterScreen.dart';
import 'package:ekartmob/components/productbox.dart';
import 'package:ekartmob/components/textComponent.dart';
import 'package:ekartmob/models/products.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});


  

  @override
  Widget build(BuildContext context) {
      List<Widget> ProductWidgets = products.where((product) {
      return product['category'] == 'Home';
    }).map((product) {
      return Container(
        padding: EdgeInsets.all(10.0),
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
  
    TextEditingController searchvalue = TextEditingController();
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 330,
                 child: text_Field(controller: searchvalue, hintText: '', obscureText: false,),
              ),
              IconButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                     return Filterscreen();
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.sort,
                    size: 20,
                  ))
            ],
          ),
          SizedBox(height: 20,),
          const Text('Top Products',style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600
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
