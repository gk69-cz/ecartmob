import 'package:ekartmob/components/brandBox.dart';
import 'package:ekartmob/models/brands.dart';
import 'package:flutter/material.dart';

class Categoryscreen extends StatelessWidget {
  final String categoryName;
  final String bannerPath;
 
  const Categoryscreen({
    super.key,
    required this.categoryName,
    required this.bannerPath 
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> brandWidgets = brandList
    .where((brand) {
        var categories = brand['categories'];
        return categories is Map && categories[categoryName] == true;
    })
    .map((brand) {
        return Container(
            padding: EdgeInsets.all(0.0),
            child: Brandbox(
                brandName: brand['name'].toString(), 
                ImageUrl: brand['imageUrl'].toString(),
            ),
        );
    })
    .toList();


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
        body: Column(
          children: [
            Container(
              height: 200,
              width: 380,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(13, 15)),
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(bannerPath))),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0, right: 10.0,top: 20.0),
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
                  SizedBox(height: 10,),
                  Text(
                    'See More',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                    
                  ),
                
                ],
              ),
              
            ),SizedBox(height: 10,),
               Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                 height: 110,
                 color: Colors.white,
                 child: Padding(
                   padding: const EdgeInsets.only(right: 18.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: 
                      brandWidgets
                      
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
