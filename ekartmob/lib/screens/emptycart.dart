import 'package:flutter/material.dart';

class Emptycart extends StatelessWidget {
  const Emptycart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          centerTitle: true,
          title: const Text('Cart'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 400,
                margin: const EdgeInsets.only(top: 90),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/emptycart.png')),
                ),
              ),
              const Text(
                'Your Cart Is empty',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Explore more and add some items',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ));
  }
}
