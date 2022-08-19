import 'package:flutter/material.dart';
import 'package:ui_challenge_one/film_image_details/film_image.dart';
import 'package:ui_challenge_one/film_image_details/my_icons.dart';
import 'package:ui_challenge_one/film_image_details/my_text.dart';
import 'package:ui_challenge_one/schedule&synopsis/schedules.dart';
import 'package:ui_challenge_one/schedule&synopsis/seats.dart';
import 'directors_writers/image.dart';
import 'film_image_details/run_button.dart';
import 'directors_writers/mytext.dart';
import 'schedule&synopsis/prices.dart';
import 'schedule&synopsis/selectcinema.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const MyFilmImage(),
      Transform.translate(
          offset: const Offset(-20, -40),
          child: const Align(
              alignment: Alignment.bottomRight, child: MyRunButton())),
      Transform.translate(
        offset: const Offset(0, -30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Expanded(flex: 4, child: MyImage()),
            Expanded(flex: 6, child: MyDetails())
          ],
        ),
      ),
      MySchedule(),
      MySchedulesDays(),
      SelectCienma(),
      CinemaName(),
      CinemaPrices(),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Seats(
                box_color: Color(0xff251977),
                text_one: '15:05',
                text_two: '12 seat availabe',
                text_color: Colors.grey),
            Seats(
                box_color: Color(0xff38354B),
                text_one: '15:05',
                text_two: '12 seat availabe',
                text_color: Colors.grey),
            Seats(
                box_color: Color(0xff282633),
                text_one: '15:55',
                text_two: 'All seat taken',
                text_color: Colors.grey),
          ],
        ),
      )
    ]);
  }
}
