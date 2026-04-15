import 'package:flutter/material.dart';
import 'package:gym/constants/ColorsConst.dart';

class SplitsView extends StatelessWidget {
  const SplitsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Spacer(flex: 1,),
                Text(
                  "My Splits",
                  style: TextStyle(fontSize: 32, color: Color(kprimaryColor),fontWeight: FontWeight.bold),
                ),
                Spacer(flex: 10,)
              ],
            ),
            SizedBox(height: 20,),
            Text(
              "CURRENT ROTATION",
              style: TextStyle(fontSize: 16, color: Color(0xff595C5D)),

            ),
            CustomSplitsCard()
          ],
        ),
      ),
    );
  }
}



class CustomSplitsCard extends StatelessWidget {
  const CustomSplitsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Container(
        padding: EdgeInsets.all(16),
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(32)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.abc_sharp),Icon(Icons.delete)],
            )
          ],
        ),
      ),
    );
  }
}