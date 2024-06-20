import 'package:flutter/material.dart';

class Reviewstar extends StatelessWidget {
  final double reviewstar;
  const Reviewstar({super.key, required this.reviewstar});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index + 0.5 < reviewstar
              ? Icons.star
              : index + 0.5 == reviewstar
                  ? Icons.star_half
                  : Icons.star_border,
          color: index + 0.5 < reviewstar ? Colors.yellow : Colors.yellow,
        );
      }),);
  }
}