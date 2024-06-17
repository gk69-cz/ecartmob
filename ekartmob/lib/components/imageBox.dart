import 'package:flutter/material.dart';

class Imagebox extends StatelessWidget {
 
final String ImageUrl ;
  const Imagebox({super.key, required this.ImageUrl,});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          height: 445,
          width: 370,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Container(
                        height: 340,
                        width: 500,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                            borderRadius: const BorderRadius.all(
                                Radius.elliptical(13, 15)),
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage(ImageUrl))
                                ),
                      ),
                    ),
                    
                  
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
