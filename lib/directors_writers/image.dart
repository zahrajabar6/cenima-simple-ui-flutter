import 'package:flutter/material.dart';

import '../screensize.dart';

class MyImage extends StatelessWidget {
  const MyImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context) * 0.20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          image: const DecorationImage(
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/id/thumb/6/68/Poster_film_Ratu_Ilmu_Hitam_2019.jpg/220px-Poster_film_Ratu_Ilmu_Hitam_2019.jpg'),
          )),
    );
  }
}
