import 'package:ekartmob/screens/individualproducts.dart';
import 'package:flutter/material.dart';

class Productbox extends StatelessWidget {

  final String productName;
  final String description;
  final String price;
  final String rating;
  final String reviewsCount;
  final String productId;

  const Productbox({
    super.key,
    required this.productName,
    required this.description,
    required this.price,
    required this.rating,
    required this.reviewsCount,
    required this.productId,
  });
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if( productId.isNotEmpty || productId.isNotEmpty !=null){
            Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  individualProduct(productIdValue: productId)),
                        );
        }else {
          print('no');
        }
      },
      child: Container(
        height: 280,
        width: 175,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 3,
            ),
            const Image(
                height: 148,
                width: 170,
                fit: BoxFit.cover,
                image: AssetImage('assets/images/shirt1.png')),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      (productName.length > 20
                              ? "${productName.substring(0, 19)}..."
                              : productName)
                          .toString(),
                      style: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      (description.length > 48
                              ? "${description.substring(0, 45)}..."
                              : description)
                          .toString(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          rating.toString(),
                          style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          price.toString(),
                          style: const TextStyle(
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
      ),
    );
  }
}
