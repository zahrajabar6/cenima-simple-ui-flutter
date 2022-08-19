import 'package:flutter/material.dart';
import 'film_details.dart';
import '../screensize.dart';

class MyFilmImage extends StatelessWidget {
  const MyFilmImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      height: displayHeight(context) * 0.30,
      width: displayWidth(context),
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(
            'data:image/jpeg;base64,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'),
      )),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Expanded(flex: 1, child: MyHomeAppBar()),
            Expanded(
              flex: 1,
              child: MyFilmDetails(),
            ),
          ]),
    );
  }
}

class MyFilmDetails extends StatelessWidget {
  const MyFilmDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              FilmName(),
              MyFilmRating(),
              MyFilmCatagory(),
            ],
          )
        ],
      ),
    );
  }
}
