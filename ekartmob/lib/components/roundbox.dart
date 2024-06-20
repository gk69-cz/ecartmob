import 'package:flutter/material.dart';

class Roundbox extends StatelessWidget {
  final List<String> list;
  const Roundbox({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: list.map((element) {
        return Padding(
          padding: const EdgeInsets.only(right:8.0,top:6.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              borderRadius: const BorderRadius.all(Radius.elliptical(12, 19)),
              color: Colors.white10,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 4.0,
                bottom: 4.0,
                left: 7,
                right: 7,
              ),
              child: Text(element),
            ),
          ),
        );
      }).toList(),
    );
  }
}
