import 'package:flutter/material.dart';

class MyTexts extends StatelessWidget {
  const MyTexts({
    Key? key,
    required this.text,
    required this.color,
    required this.size,
    required this.fontWeight,
  }) : super(key: key);

  final String text;
  final Color color;
  final double size;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
