import 'package:flutter/material.dart';

class Productbox extends StatelessWidget {
  final String productName;
  final String description;
  final String price;
  final String rating;
  final String reviewsCount;

  const Productbox({
    super.key,
    required this.productName,
    required this.description,
    required this.price,
    required this.rating,
    required this.reviewsCount,
  });

  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 175,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 3,
          ),
          Image(
              height: 150,
              width: 170,
              fit: BoxFit.cover,
              image: AssetImage('assets/images/shirt1.png')),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: EdgeInsets.all(3.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    (productName.length > 20 ? productName.substring(0,19)+"...": productName ).toString(),
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    (description.length> 48 ? description.substring(0,45)+"...": description ).toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        rating.toString(),
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        price.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
