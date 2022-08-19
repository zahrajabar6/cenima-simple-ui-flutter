import 'package:flutter/material.dart';
import 'package:ui_challenge_one/film_image_details/my_text.dart';
import 'package:ui_challenge_one/screensize.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: displayWidth(context),
      height: 63,
      color: Color(0xff251977),
      child: Align(
        alignment: Alignment.center,
        child: MyTexts(
            text: 'Take a seat',
            color: Colors.white,
            size: 22,
            fontWeight: FontWeight.normal),
      ),
    );
  }
}
