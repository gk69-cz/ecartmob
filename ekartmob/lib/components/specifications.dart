import 'package:flutter/material.dart';

class specifications extends StatelessWidget {
  final Object Specifications;

  const specifications({super.key, required this.Specifications});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          Specifications.toString(),
        )
      ],
    );
  }
}