import 'package:flutter/material.dart';
import 'package:gymhabit/features/home/presenter/widgets/button_tabbar_widget.dart';

import 'package:gymhabit/features/theme/app_colors.dart';

import 'package:gymhabit/features/home/presenter/controller/home_controller.dart';
import 'package:gymhabit/features/home/presenter/pages/daily_activity_page.dart';
import 'package:gymhabit/features/home/presenter/pages/nutrition_page.dart';
import 'package:gymhabit/features/home/presenter/pages/profile_page.dart';
import 'package:gymhabit/features/home/presenter/pages/trainer_page.dart';
import 'package:gymhabit/features/home/presenter/pages/workout_page.dart';

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
      resizeToAvoidBottomInset: false,
      extendBody: true,
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
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 12),
          height: 90,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(18),
              ),
              color: AppColors.background,
              boxShadow: [
                BoxShadow(
                  color: AppColors.body.withOpacity(0.2),
                  blurRadius: 4,
                  offset: const Offset(1, 1),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonTabBarWidget(
                  pageActive: controller.pageActive == 0,
                  onPressed: () {
                    setState(() {
                      controller.setPage(0);
                    });
                  },
                  index: 0,
                  icon: const Icon(Icons.home),
                ),
                ButtonTabBarWidget(
                  pageActive: controller.pageActive == 1,
                  onPressed: () {
                    setState(() {
                      controller.setPage(1);
                    });
                  },
                  index: 0,
                  icon: const Icon(Icons.restaurant_menu),
                ),
                ButtonTabBarWidget(
                  pageActive: controller.pageActive == 2,
                  onPressed: () {
                    setState(() {
                      controller.setPage(2);
                    });
                  },
                  index: 0,
                  icon: const Icon(Icons.fitness_center),
                ),
                ButtonTabBarWidget(
                  pageActive: controller.pageActive == 3,
                  onPressed: () {
                    setState(() {
                      controller.setPage(3);
                    });
                  },
                  index: 0,
                  icon: const Icon(Icons.supervisor_account),
                ),
                ButtonTabBarWidget(
                  pageActive: controller.pageActive == 4,
                  onPressed: () {
                    setState(() {
                      controller.setPage(4);
                    });
                  },
                  index: 0,
                  icon: const Icon(Icons.account_circle),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
