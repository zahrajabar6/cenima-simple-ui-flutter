import 'package:flutter/material.dart';

import 'my_icons.dart';

class MyRunButton extends StatelessWidget {
  const MyRunButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 75,
        height: 75,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xff251977),
        ),
        child: const MyIcon(
          icon: Icons.play_arrow,
          color: Colors.white,
          size: 65,
        ));
  }
}
