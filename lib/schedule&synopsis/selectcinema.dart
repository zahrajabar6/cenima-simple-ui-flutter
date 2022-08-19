import 'package:flutter/material.dart';

import '../film_image_details/my_icons.dart';
import '../film_image_details/my_text.dart';

class SelectCienma extends StatelessWidget {
  const SelectCienma({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 20),
        child: MyTexts(
          text: 'Select Cinema',
          color: Colors.grey,
          fontWeight: FontWeight.normal,
          size: 15,
        ),
      ),
    );
  }
}

class CinemaName extends StatelessWidget {
  const CinemaName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyTexts(
                text: 'Cinema XXI Ambarukmo Plaza',
                color: Colors.white,
                size: 16,
                fontWeight: FontWeight.bold,
              ),
              MyIcon(icon: Icons.arrow_drop_down, size: 30, color: Colors.white)
            ],
          )),
    );
  }
}
