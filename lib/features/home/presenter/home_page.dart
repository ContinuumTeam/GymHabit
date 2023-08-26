import 'package:flutter/material.dart';

import 'package:gymhabit/features/theme/app_colors.dart';

import 'package:gymhabit/features/home/presenter/controller/home_controller.dart';
import 'package:gymhabit/features/home/presenter/pages/daily_activity_page.dart';
import 'package:gymhabit/features/home/presenter/pages/nutrition_page.dart';
import 'package:gymhabit/features/home/presenter/pages/profile_page.dart';
import 'package:gymhabit/features/home/presenter/pages/trainer_page.dart';
import 'package:gymhabit/features/home/presenter/pages/workout_page.dart';

import 'package:phosphor_flutter/phosphor_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: ValueListenableBuilder(
          valueListenable: controller.currentPage,
          builder: (_, value, __) {
            return PageView(
              controller: controller.pageViewController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                DailyActivityPage(),
                NutritionPage(),
                WorkoutPage(),
                TrainerPage(),
                ProfilePage(),
              ],
            );
          }),
      bottomNavigationBar: Container(
        height: 64,
        color: AppColors.background,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  controller.setPage(0);
                });
              },
              iconSize: 32,
              icon: const Icon(PhosphorIcons.houseFill),
              color: AppColors.secondary,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  controller.setPage(1);
                });
              },
              iconSize: 32,
              icon: const Icon(Icons.restaurant_menu),
              color: AppColors.body,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  controller.setPage(2);
                });
              },
              iconSize: 32,
              icon: const Icon(Icons.fitness_center),
              color: AppColors.body,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  controller.setPage(3);
                });
              },
              iconSize: 32,
              icon: const Icon(Icons.supervisor_account),
              color: AppColors.body,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  controller.setPage(4);
                });
              },
              iconSize: 34,
              icon: const Icon(Icons.account_circle),
              color: AppColors.body,
            ),
          ],
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
