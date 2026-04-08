import 'package:flutter/material.dart';
import 'package:gym/constants/ColorsConst.dart';
import 'package:gym/features/welcome/views/widgets/Custom_activity_card.dart';
import 'package:gym/features/welcome/views/widgets/Custom_appbar.dart';
import 'package:gym/features/welcome/views/widgets/Custom_gym_photo.dart';
import 'package:gym/features/welcome/views/widgets/Custom_week_days_calendar.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbar(),
              SizedBox(height: 20),
              Text("Good Morning", style: TextStyle(fontSize: 18)),
              Text(
                "Welcome back,",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text(
                " Mohamed!",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(kprimaryColor),
                ),
              ),
              CustomWeekDaysCalendar(),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomActivityCard(
                    icon: Icons.fitness_center,
                    color: Colors.green,
                    number: 12,
                    text: 'Total Sessions',
                  ),
                  CustomActivityCard(
                    color: Colors.red,
                    number: 4200,
                    text: 'kcal burned',
                    icon: Icons.local_fire_department_rounded,
                  ),
                ],
              ),
              SizedBox(height: 20),
              CustomGymPhoto(),
            ],
          ),
        ),
      ),
    );
  }
}

