import 'package:flutter/material.dart';

class Blockbutton extends StatelessWidget {
  final String keyValue;
  
  const Blockbutton({super.key, required this.keyValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        
      ),
     child: Column(
      children: [
        TextButton(onPressed: () {print("hello");}, child: Text(keyValue))
      ],
     ),
    );
  }
}