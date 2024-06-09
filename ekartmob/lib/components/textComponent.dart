import 'package:flutter/material.dart';

class text_Field extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  const text_Field({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary )
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)
          ),
          fillColor: Colors.white10,
          filled: true,
          hintText:hintText,
          hintStyle: TextStyle(
            color: Colors.grey.shade400
          )
        ),
      ),
    );
  }
}