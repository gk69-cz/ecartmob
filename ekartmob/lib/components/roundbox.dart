import 'package:flutter/material.dart';

class Roundbox extends StatefulWidget {
  final List<Map<String, String>> list;
  final List<String> selections;
  final void Function(List<String>) getValue;

  const Roundbox({super.key, required this.list, required this.selections, required this.getValue});

  @override
  State<Roundbox> createState() => _RoundboxState();
}

class _RoundboxState extends State<Roundbox> {
  @override
  void initState() {
    super.initState();
  }

  getValue(){
    return widget.selections;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: widget.list.map((element) {
        return GestureDetector(
          onTap: () {
            setState(() {
              if (element['Selected'] == 'true') {
                element['Selected'] = 'false';
                widget.selections.remove(element['name'].toString());
                
                getValue();
              } else {
                element['Selected'] = 'true';
                widget.selections.add(element['name'].toString());
                
                getValue();
              }
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 6.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.yellow.shade600),
                borderRadius: const BorderRadius.all(Radius.elliptical(12, 19)),
                color: element['Selected'] == "true" ? Colors.yellow.shade800 : Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 4.0,
                  bottom: 4.0,
                  left: 7,
                  right: 7,
                ),
                child: Text(
                  element['name'].toString(),
                  style: TextStyle(
                    color: element['Selected'] == "true" ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
