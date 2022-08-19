import 'package:flutter/material.dart';

import '../film_image_details/my_text.dart';

class Seats extends StatelessWidget {
  const Seats({
    Key? key,
    required this.box_color,
    required this.text_one,
    required this.text_two,
    required this.text_color,
  }) : super(key: key);

  final Color box_color;
  final String text_one;
  final String text_two;
  final Color text_color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: box_color,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          MyTexts(
              text: text_one,
              color: text_color,
              size: 14,
              fontWeight: FontWeight.bold),
          MyTexts(
              text: text_two,
              color: text_color,
              size: 11,
              fontWeight: FontWeight.normal)
        ]),
      ),
    );
  }
}
