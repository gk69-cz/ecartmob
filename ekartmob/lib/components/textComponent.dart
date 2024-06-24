import 'package:flutter/material.dart';

class text_Field extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final String? screen;
  final void Function(String)? getValue;

  const text_Field(
      {super.key,
      required this.hintText,
      required this.obscureText,
      required this.controller, 
      this.screen,
      this.getValue,
       });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(18)),
                borderSide:
                    BorderSide(color: screen != null && screen =='Search'? Colors.transparent:Colors.black26)),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(18)),
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.primary)),
            fillColor: Colors.white,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.shade300)),
           onSubmitted: getValue,
      ),
    );
  }
}
