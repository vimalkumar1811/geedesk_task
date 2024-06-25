import 'package:flutter/material.dart';

class TextfieldWidget extends StatefulWidget {
  final String hintText;
  final double height;
  final int? maxLines;
  final bool? fillColor;
  const TextfieldWidget({Key? key, required this.hintText, required this.height, this.maxLines, this.fillColor}) : super(key: key);

  @override
  State<TextfieldWidget> createState() => _TextfieldWidgetState();
}

class _TextfieldWidgetState extends State<TextfieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      child: TextFormField(
        maxLines: widget.maxLines,
        decoration: InputDecoration(
          fillColor: Colors.grey.shade300,
          filled: widget.fillColor,
          hintText: widget.hintText,
            hintStyle: TextStyle(
                fontSize: 18,
            ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            )
          )
        ),
      ),
    );
  }
}
