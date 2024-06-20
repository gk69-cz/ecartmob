import 'package:flutter/material.dart';

class Blockbutton extends StatelessWidget {
  final String keyValue;
  
  const Blockbutton({super.key, required this.keyValue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15.0),
          
        ),
       child: Column(
        children: [
          TextButton(onPressed: () {print("hello");}, child: Text(keyValue))
        ],
       ),
      ),
    );
  }
}