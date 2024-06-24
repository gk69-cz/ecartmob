import 'package:flutter/material.dart';

class Roundbox extends StatefulWidget {
  final List<Map<String,String>> list;
  final List<String> selections;
  
 
  const Roundbox({super.key, required this.list, required this.selections});

  @override
  State<Roundbox> createState() => _RoundboxState();
}

class _RoundboxState extends State<Roundbox> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: widget.list.map((element) {
        return GestureDetector(
          onTap: () {
            setState(() {
              if(element['Selected'] == 'true'){
                element['Selected'] = 'false';
                
              }else{
                element['Selected'] = 'true';
              }
            });
          },
          
          child: Padding(
            padding: const EdgeInsets.only(right:8.0,top:6.0),
            child: Container(
              
              decoration: BoxDecoration(
                border: Border.all(color: Colors.yellow.shade600),
                borderRadius: const BorderRadius.all(Radius.elliptical(12, 19)),
                color:element['Selected'] =="true"? Colors.yellow.shade800 :Colors.white ,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 4.0,
                  bottom: 4.0,
                  left: 7,
                  right: 7,
                ),
                child: Text(element['name'].toString(),style: TextStyle(
                  color:element['Selected'] =="true"? Colors.white: Colors.black
                ),),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
