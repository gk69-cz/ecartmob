import 'package:ekartmob/screens/categoryScreen.dart';
import 'package:ekartmob/screens/products/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Categorybox extends StatelessWidget {
  final String CategoryName;
  final Icon iconValue;

  const Categorybox({
    super.key,
    required this.CategoryName,
    required this.iconValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     
      child: Padding(
        
        padding: const EdgeInsets.all(5.0),
        child: GestureDetector(
          
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Categoryscreen(
                        categoryName: CategoryName,
                      )),
            );
          },
          child: Container( 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
            height: 165,
            width: 115,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 3,
                ),
           
                Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.grey.shade100,
            ),
                            height: 60,
                            width: 60,
                            
                            child: iconValue),
                        Text(CategoryName),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
