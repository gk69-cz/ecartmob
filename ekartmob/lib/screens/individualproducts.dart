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
  final List<Map<String, dynamic>> subcategoryModel = SubcategoryModel;

  const individualProduct({super.key, required this.productIdValue});

  @override
  Widget build(BuildContext context) {
    final product = products.firstWhere(
      (product) => product['productId'] == productIdValue,
    );
    // Function to extract button values
    List<String> getButtonValues(String category, String subcategory) {
      for (var mainCategory in subcategoryModel) {
        if (mainCategory.containsKey(category)) {
          var subcategories = mainCategory[category];
          if (subcategories.containsKey(subcategory)) {
            return List<String>.from(subcategories[subcategory]['buttons']);
          }
        }
      }
      return [];
    }

    // Extract images
    final List<String> images = List<String>.from(product['images'] as List);
    final List<String> features = (product['features'] as Map<String, dynamic>)
        .entries
        .map((entry) => '${entry.key}: ${entry.value}')
        .toList();
    List<String> buttonValues = getButtonValues(
        product['category'].toString(), product['subCategory'].toString());

    // Generate widgets from button values
    final List<Widget> blockButton = buttonValues.map((value) {
      return Container(
        child: Blockbutton(
          keyValue: value,
        ),
      );
    }).toList();

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

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(toolbarHeight: 60,backgroundColor: Colors.yellow.shade800, centerTitle: true, actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: IconButton(
            icon: const Icon(
              Icons.share_outlined,
              color: Colors.white70,
              size: 30,
            ),
            onPressed: () {},
             color: Colors.white70,
          ),
        ),
      ]),
      body: ListView(
        children: [
          Column(
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
                      const SizedBox(
                        height: 10,
                      ),
                      //cost and icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //name of the product
                          Text(
                            product['productName'].toString(),
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
          
                          IconButton(
                              onPressed: () {
                              
                              },
                              icon: const Icon(Icons.favorite_outline_sharp))
                        ],
                      ),
          
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Reviewstar(reviewstar: product['rating'] as double),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(product['rating'].toString()),
                          const SizedBox(
                            width: 20,
                          ),
                          Text("|  ${product['reviewsCount']} Reviews")
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //margin
                      Divider(
                        thickness: 1.0,
                        color: Colors.grey.shade200,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      //description
                      Text(
                        "${product['description']}",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey.shade500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
          
                      const Text(
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
                                  style: const TextStyle(
                                      fontSize: 19, color: Colors.black38),
                                ))
                            .toList(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Variations',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600),),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SizedBox(
                            height: 110,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: blockButton,
                              ),
                            ),
                          ),
                        ),
                      ),
          
                      //dynamic things as per the sub category
                    ]),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Footer(
                  Cost: product['price'].toString(),
                ),
          
         
          
        ],
      ),
    );
  }
}
