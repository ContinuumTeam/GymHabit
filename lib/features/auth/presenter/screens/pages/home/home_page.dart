import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gymhabit/features/auth/presenter/controllers/home_controller.dart';
import 'package:gymhabit/features/auth/presenter/screens/pages/home/pages/daily_activity_page.dart';
import 'package:gymhabit/features/auth/presenter/screens/theme/app_colors.dart';
import 'package:gymhabit/features/auth/presenter/screens/theme/app_text.dart';
import 'package:gymhabit/features/auth/presenter/screens/pages/home/widgets/streak_info_widget.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Container(
          height: 150,
          padding: const EdgeInsets.only(top: 40),
          child: Center(
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 18),
              leading: Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              title: Text.rich(
                TextSpan(
                  text: 'Hi, ',
                  style: AppText.titleRegular,
                  children: [
                    TextSpan(
                      text: 'Etham 👋',
                      style: AppText.titleBoldBackground,
                    ),
                  ],
                ),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.notifications_outlined),
                iconSize: 28,
                color: AppColors.primary,
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
      body: ValueListenableBuilder(
          valueListenable: controller.currentPage,
          builder: (_, value, __) {
            return PageView(
              controller: controller.pageViewController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                DailyActivityPage(),
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
                setState(() {});
              },
              iconSize: 32,
              icon: const Icon(PhosphorIcons.houseFill),
              color: AppColors.secondary,
            ),
            IconButton(
              onPressed: () {
                setState(() {});
              },
              iconSize: 32,
              icon: const Icon(PhosphorIcons.compass),
              color: AppColors.body,
            ),
            IconButton(
              onPressed: () {
                setState(() {});
              },
              iconSize: 32,
              icon: const Icon(PhosphorIcons.heart),
              color: AppColors.body,
            ),
            IconButton(
              onPressed: () {
                setState(() {});
              },
              iconSize: 34,
              icon: const Icon(PhosphorIcons.userCircle),
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
