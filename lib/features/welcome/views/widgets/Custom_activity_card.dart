import 'package:flutter/material.dart';

class CustomActivityCard extends StatelessWidget {
  const CustomActivityCard({super.key});
  final double fixSize = 180;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: fixSize,
      width: fixSize,
      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.circular(32)
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 42,width: 42,
              decoration: BoxDecoration(color: Colors.lightGreen[300],borderRadius: BorderRadius.circular(14)),
              child: Icon(Icons.fitness_center,size: 32,color: Colors.green[800],)),
            Spacer(),
            Text("12",style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold),),
            Text("Total Sessions",style: TextStyle(fontSize: 18),)

          ],
        ),
      ),
    );
  }
}