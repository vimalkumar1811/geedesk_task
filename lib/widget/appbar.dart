import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff2a3f54),
      title: Text(title,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold
      ),
      ),
    );
  }
}
