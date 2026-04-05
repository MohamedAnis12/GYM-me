import 'package:flutter/material.dart';
import 'package:gym/constants/ColorsConst.dart';
import 'package:gym/features/welcome/views/widgets/Custom_Day_Ball.dart';

class CustomWeekDaysCalendar extends StatelessWidget {
  const CustomWeekDaysCalendar({super.key});
  static List<Map<String, int>> days = [
    {"S": 12},
    {"M": 12},
    {"T": 12},
    {"W": 12},
    {"T": 12},
    {"F": 12},
    {"S": 12},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
      ),

      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("weakly Activity", style: TextStyle(fontSize: 24)),
                    Text("tracker", style: TextStyle(fontSize: 24)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Activie",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(kprimaryColor),
                      ),
                    ),
                    Text(
                      "week",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(kprimaryColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 5),
              ],
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: days.length,
                itemBuilder: (contxt, int valu) {
                  return CustomDayBall(day: days[valu]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
