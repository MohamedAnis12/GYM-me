
import 'package:flutter/material.dart';
import 'package:gym/constants/ColorsConst.dart';

class CustomDayBall extends StatelessWidget {
  const CustomDayBall({super.key, required this.day});
  final Map<String, int> day;
  @override
  Widget build(BuildContext context) {
   String dname=day.keys.first;
    return Padding(
      padding: const EdgeInsets.all(2),
      child: SizedBox(
        child: Column(
          children: [
            Text(dname,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
            Container(

              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color(kAppColor),
                borderRadius: BorderRadius.circular(500),
              ),

              child: Center(child: Text("${day[dname]}",style: TextStyle(fontSize: 18),)),
            ),
          ],
        ),
      ),
    );
  }
}
