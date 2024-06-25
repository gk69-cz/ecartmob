import 'package:ekartmob/screens/categoryScreen.dart';
import 'package:flutter/material.dart';

class Categorybox extends StatelessWidget {
  final String CategoryName;
  final String categoryImageUrl;
  final String bannerPath;
  final String location;

  const Categorybox({
    super.key,
    required this.CategoryName,
    required this.categoryImageUrl,
    required this.bannerPath,
    required this.location,
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
                        bannerPath: bannerPath,
                      )),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              border: location != "Home"
                  ? Border.all(color: const Color.fromARGB(32, 0, 0, 0))
                  : Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.circular(15.0),
              color: const Color.fromARGB(10, 0, 0, 0),
            ),
            height: 195,
            width: 115,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.grey.shade50,
                            ),
                            height: 60,
                            width: 60,
                            child: Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.elliptical(13, 15)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(categoryImageUrl))),
                          ),
                            
                            ),
                        const SizedBox(
                          height: 2,
                        ),
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
