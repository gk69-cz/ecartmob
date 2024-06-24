import 'package:flutter/material.dart';

class Emptycart extends StatelessWidget {
  const Emptycart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          centerTitle: true,
          backgroundColor: Colors.yellow.shade800,
          shadowColor:Colors.yellow.shade600 ,
          title: const Text('Cart'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 400,
                  margin: const EdgeInsets.only(top: 50),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/emptycart.png')),
                  ),
                ),
                const Text(
                  'Your cart looks empty',
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
                Center(
              child: TextButton(
              onPressed: () => {},
             child: Container(
              height: 50,
              width:200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow.shade500),
              borderRadius: const BorderRadius.all(Radius.elliptical(12, 19)),
             color: Colors.yellow.shade800,
              ),
              child: const Center(
                child: Text('Explore ',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),),
              ),
              
             )))
              ],
            ),
          ),
        ));
  }
}
