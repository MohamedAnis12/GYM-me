import 'package:flutter/material.dart';

class CustomActivityCard extends StatelessWidget {
  const CustomActivityCard({super.key, required this.color, required this.number, required this.text, required this.icon});
  final double fixSize = 180;
  final Color color;
  final int number;
  final String text;
  final IconData icon;
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
              decoration: BoxDecoration(color: color.withOpacity(.2),borderRadius: BorderRadius.circular(14)),
              child: Icon(icon,size: 32,color: color.withOpacity(1),)),
            Spacer(),
            Text("$number",style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold),),
            Text(text,style: TextStyle(fontSize: 18),)

          ],
        ),
      ),
    );
  }
}


