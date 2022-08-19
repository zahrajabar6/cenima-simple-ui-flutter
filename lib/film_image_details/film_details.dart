import 'package:flutter/material.dart';
import 'package:ui_challenge_one/screensize.dart';

import 'my_icons.dart';
import 'my_text.dart';

class MyHomeAppBar extends StatelessWidget {
  const MyHomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: displayWidth(context),
        padding: const EdgeInsets.all(10),
        child: Transform.translate(
          offset: const Offset(0, 25),
          child:
              const Align(alignment: Alignment.topCenter, child: ArrowAndFav()),
        ),
      ),
    );
  }
}

class FilmName extends StatelessWidget {
  const FilmName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyTexts(
      text: 'RATU ILMU HITAM',
      size: 25,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
  }
}

class MyFilmCatagory extends StatelessWidget {
  const MyFilmCatagory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [MyCatagory(text: 'Horror'), MyCatagory(text: 'Drama')],
    );
  }
}

class MyCatagory extends StatelessWidget {
  const MyCatagory({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
          width: 93,
          height: 32,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 59, 51, 82),
              borderRadius: BorderRadius.circular(20)),
          child: Align(
            alignment: Alignment.center,
            child: MyTexts(
              text: text,
              size: 16,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          )),
    );
  }
}

class MyFilmRating extends StatelessWidget {
  const MyFilmRating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        MyIcon(
          icon: Icons.star,
          size: 16,
          color: Colors.orange,
        ),
        MyTexts(
          text: ' 8.9/10 from IMDb ',
          size: 16,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ],
    );
  }
}

class ArrowAndFav extends StatelessWidget {
  const ArrowAndFav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        MyIcon(
          icon: Icons.arrow_back,
          size: 32,
          color: Colors.white,
        ),
        MyIcon(
          icon: Icons.favorite_border,
          size: 32,
          color: Colors.white,
        )
      ],
    );
  }
}
