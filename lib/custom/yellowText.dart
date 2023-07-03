import 'package:flutter/material.dart';

class YellowText extends StatelessWidget {
  final String text;
  const YellowText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.amberAccent[200],
        letterSpacing: 2.0,
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
