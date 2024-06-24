import 'package:ekartmob/components/brandBox.dart';
import 'package:ekartmob/components/productbox.dart';
import 'package:ekartmob/models/brands.dart';
import 'package:ekartmob/models/products.dart';
import 'package:flutter/material.dart';

class Categoryscreen extends StatefulWidget {
  final String categoryName;
  final String bannerPath;
  final bool _isSearchBarVisible = false;

   const Categoryscreen(
      {super.key, required this.categoryName, required this.bannerPath});

  @override
  State<Categoryscreen> createState() => _CategoryscreenState();
}

class _CategoryscreenState extends State<Categoryscreen> {
   TextEditingController search = TextEditingController();

   bool _isSearchBarVisible = true;
   @override
  void initState(){
    bool isSearchBarVisible = true;
   }

  @override
  Widget build(BuildContext context) {
    List<Widget> brandWidgets = brandList.where((brand) {
      var categories = brand['categories'];
      return categories is Map && categories[widget.categoryName] == true;
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
      return product['category'] == widget.categoryName;
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

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          toolbarHeight: 60,
          centerTitle: true,
          backgroundColor: Colors.yellow.shade800,
          shadowColor:Colors.yellow.shade600 ,
          title: Text(widget.categoryName),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 30,
                ),
                onPressed: () {     
                    setState(() {
                       _isSearchBarVisible = !_isSearchBarVisible;
                    });
                },
                color: Colors.white70,
              ),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.only(top:4.0),
        child: ListView(
          children: [
          //  Searchfilter(controller: search , category: widget.categoryName,),
         
        
            Container(
              height: 200,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.elliptical(13, 15)),
                  image: DecorationImage(
                      fit: BoxFit.fitWidth, image: AssetImage(widget.bannerPath))),
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
      ),
    );
  }
}
