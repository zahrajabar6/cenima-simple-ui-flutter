import 'package:flutter/material.dart';

import '../film_image_details/my_text.dart';
import '../screensize.dart';

class MyDetails extends StatelessWidget {
  const MyDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context) * 0.20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          MyTexts(
              text: 'Director : Kimo Stamoel',
              color: Colors.white,
              size: 15,
              fontWeight: FontWeight.normal),
          MyTexts(
              text: 'Writter  : Joko Anwar',
              color: Colors.white,
              size: 15,
              fontWeight: FontWeight.normal),
          MyTexts(
              text: 'Duration : 1 hour 39 minute(s)',
              color: Colors.white,
              size: 15,
              fontWeight: FontWeight.normal),
          MyTexts(
              text: "Rating   : D (17+)",
              color: Colors.white,
              size: 15,
              fontWeight: FontWeight.normal),
        ],
      ),
    );
  }
}
