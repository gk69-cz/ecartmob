import 'package:flutter/material.dart';

class Brandbox extends StatelessWidget {
  final String brandName;
  final String ImageUrl;

  const Brandbox({super.key, required this.brandName, required this.ImageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: GestureDetector(
          onTap: () {
            print('pressed');
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
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
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.grey.shade100,
                            ),
                            height: 80,
                            width: 80,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(13, 15)),
                                  image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage(ImageUrl)
                                      )),
                            ),
                            ),
                        Text(brandName),
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
