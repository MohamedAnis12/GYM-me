import 'package:flutter/material.dart';
import 'package:gym/constants/ColorsConst.dart';
import 'package:gym/features/welcome/views/welcome_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: const WelcomeView(),
      theme: ThemeData(scaffoldBackgroundColor: Color(kAppColor))
    );
  }
}


