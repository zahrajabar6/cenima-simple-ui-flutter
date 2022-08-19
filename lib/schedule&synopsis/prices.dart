import 'package:flutter/material.dart';

import '../film_image_details/my_text.dart';

class CinemaPrices extends StatelessWidget {
  const CinemaPrices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyTexts(
              text: 'REGULAR 2D',
              color: Colors.white,
              size: 16,
              fontWeight: FontWeight.bold),
          MyTexts(
            text: 'Rp 30.000',
            color: Colors.white,
            size: 16,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
