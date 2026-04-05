import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.person, size: 42),
          SizedBox(width: 30),
          Text("The Sanctuary",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          Spacer(),
          Icon(Icons.notifications, size: 36),
        ],
      ),
    );
  }
}