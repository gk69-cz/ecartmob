import 'dart:convert';

import 'package:ekartmob/components/categorybox.dart';
import 'package:ekartmob/helpers/iconhelpers.dart';
import 'package:ekartmob/mainComponents/categorygrid.dart';
import 'package:ekartmob/models/categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class categories extends StatelessWidget {
  const categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> categoryWidgets = categoriesList.map((category) {
      return Container(
        padding: EdgeInsets.all(0.0), // Add padding for spacing
        child: Categorybox(
            CategoryName: category['categoryName'].toString(),
            iconValue: getIconFromString(category['icon'].toString())),
      );
    }).toList();

    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            width: 280,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('assets/images/banner.jpg'))),
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
                  'Categories ',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: GridView.count(
              shrinkWrap: true, // Allow the GridView to adapt to its content
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: categoryWidgets,
            ),
          )
        ],
      ),
    );
  }
}