import 'package:flutter/material.dart';

import '../film_image_details/my_text.dart';

class MySchedule extends StatelessWidget {
  const MySchedule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: const BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 2.0, color: Color(0xff251977))),
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: MyTexts(
                        text: 'Schedule',
                        color: Colors.white,
                        size: 20,
                        fontWeight: FontWeight.bold),
                  ))),
          Expanded(
            flex: 1,
            child: Container(
                padding: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                  )),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: MyTexts(
                      text: 'Synopsis',
                      color: Colors.grey,
                      size: 20,
                      fontWeight: FontWeight.normal),
                )),
          )
        ],
      ),
    );
  }
}

class SchedulesDetails extends StatelessWidget {
  const SchedulesDetails({
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
      width: 48,
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
              size: 12,
              fontWeight: FontWeight.normal),
          MyTexts(
              text: text_two,
              color: text_color,
              size: 16,
              fontWeight: FontWeight.bold)
        ]),
      ),
    );
  }
}

class MySchedulesDays extends StatelessWidget {
  const MySchedulesDays({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SchedulesDetails(
            box_color: Color(0xff251977),
            text_one: '20 Nov',
            text_two: 'WED',
            text_color: Colors.white,
          ),
          SchedulesDetails(
            box_color: Color(0xff38354B),
            text_one: '21 Nov',
            text_two: 'THU',
            text_color: Colors.grey,
          ),
          SchedulesDetails(
            box_color: Color(0xff38354B),
            text_one: '22 Nov',
            text_two: 'FRI',
            text_color: Colors.grey,
          ),
          SchedulesDetails(
            box_color: Color(0xff38354B),
            text_one: '23 Nov',
            text_two: 'SAT',
            text_color: Colors.grey,
          ),
          SchedulesDetails(
            box_color: Color(0xff38354B),
            text_one: '24 Nov',
            text_two: 'SUN',
            text_color: Colors.grey,
          ),
          SchedulesDetails(
            box_color: Color(0xff282633),
            text_one: '25 Nov',
            text_two: 'MON',
            text_color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
