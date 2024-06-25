import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  final String title;
  final String hintText;
  const DropDownWidget({Key? key, required this.title, required this.hintText}) : super(key: key);

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {

  var items = ['Bangalore','Chennai','Puducherry'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        ),
        const SizedBox(height: 10,),
        Container(
          height: 60,
          child: DropdownButtonFormField(
              isExpanded: true,
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: TextStyle(color: Colors.black,
                fontSize: 18
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  )
                )
              ),
              items: items.map((text) => DropdownMenuItem(
                  value: text,
                  child: Text(text,
                  style: TextStyle(fontSize: 18),
                  )
              )).toList(),
              onChanged: (_){}),
        ),
      ],
    );
  }
}
