import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gymhabit/features/home/presenter/widgets/card_program_widget.dart';

import 'package:gymhabit/features/theme/app_colors.dart';
import 'package:gymhabit/features/theme/app_text.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../widgets/streak_info_widget.dart';

class DailyActivityPage extends StatefulWidget {
  const DailyActivityPage({super.key});

  @override
  State<DailyActivityPage> createState() => _DailyActivityPageState();
}

class _DailyActivityPageState extends State<DailyActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: SafeArea(
          child: Center(
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 24),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const StreakInfoWidget(
                streak: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 18),
                width: double.infinity,
                child: Text(
                  'Daily activity',
                  style: AppText.titleRegular,
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                mainAxisSpacing: 16,
                crossAxisSpacing: 14,
                childAspectRatio: 1 / 1.5,
                physics: const NeverScrollableScrollPhysics(),
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 2,
                // Generate 100 widgets that display their index in the List.
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.body.withOpacity(0.5),
                          blurRadius: 6,
                          offset: const Offset(4, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                            left: 12,
                            right: 12,
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            child: Text(
                              'Weight',
                              style: AppText.cardBoldTitle,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                          child: LineChart(
                            LineChartData(
                              gridData: FlGridData(
                                show: false,
                                drawVerticalLine: false,
                                getDrawingHorizontalLine: (value) {
                                  return FlLine(
                                    color: AppColors.body,
                                    strokeWidth: 1,
                                  );
                                },
                                getDrawingVerticalLine: (value) {
                                  return FlLine(
                                    color: AppColors.body,
                                    strokeWidth: 1,
                                  );
                                },
                              ),
                              titlesData: FlTitlesData(
                                  show: false,
                                  bottomTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: false,
                                      reservedSize: 22,
                                    ),
                                  ),
                                  leftTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: false,
                                      reservedSize: 22,
                                    ),
                                  )),
                              borderData: FlBorderData(
                                show: false,
                                border: Border.all(
                                  color: AppColors.body,
                                  width: 1,
                                ),
                              ),
                              minX: 0,
                              maxY: 100,
                              minY: 50,
                              lineBarsData: [
                                LineChartBarData(
                                  spots: const [
                                    FlSpot(0, 60),
                                    FlSpot(1, 75),
                                    FlSpot(2, 70),
                                    FlSpot(3, 80),
                                    FlSpot(4, 72),
                                    FlSpot(5, 77),
                                    FlSpot(6, 79),
                                    FlSpot(7, 85),
                                    FlSpot(8, 80),
                                    FlSpot(9, 82),
                                    FlSpot(10, 75),
                                    FlSpot(11, 80),
                                  ],
                                  isCurved: true,
                                  dotData: FlDotData(show: false),
                                  color: AppColors.secondary,
                                  barWidth: 2,
                                  belowBarData: BarAreaData(
                                    show: true,
                                    spotsLine: BarAreaSpotsLine(),
                                    gradient: LinearGradient(
                                      colors: [
                                        AppColors.secondary.withOpacity(0.2),
                                        AppColors.secondary.withOpacity(0.0),
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ListTile(
                            title: Text.rich(
                              TextSpan(
                                text: '75 ',
                                style: AppText.cardTextBold,
                                children: [
                                  TextSpan(
                                    text: 'KG',
                                    style: AppText.cardText,
                                  ),
                                ],
                              ),
                            ),
                            subtitle: Text(
                              'Last update 2 days ago',
                              style: AppText.cardText,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.body.withOpacity(0.5),
                          blurRadius: 6,
                          offset: const Offset(4, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                            left: 12,
                            right: 12,
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            child: Text(
                              'Steps',
                              style: AppText.cardBoldTitle,
                            ),
                          ),
                        ),
                        SizedBox(
                          child: CircularPercentIndicator(
                            radius: 48,
                            lineWidth: 6,
                            animation: true,
                            percent: 0.7,
                            center: const Center(
                              child: Icon(
                                PhosphorIcons.barbell,
                                size: 48,
                                color: Color(0xFF98D1EA),
                              ),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: const Color(0xFF98D1EA),
                            backgroundColor: const Color(0xFF687676),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 0,
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            child: ListTile(
                              title: Text('4,335', style: AppText.cardTextBold),
                              subtitle: Text(
                                'Last update 8 min',
                                style: AppText.cardText,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.body.withOpacity(0.5),
                          blurRadius: 6,
                          offset: const Offset(4, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                            left: 12,
                            right: 12,
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            child: Text(
                              'BMI',
                              style: AppText.cardBoldTitle,
                            ),
                          ),
                        ),
                        const SizedBox(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 0,
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            child: ListTile(
                              title: Text.rich(
                                TextSpan(
                                  text: '24 ',
                                  style: AppText.cardTextBold,
                                  children: [
                                    TextSpan(
                                      text: 'KG/m²',
                                      style: AppText.cardText,
                                    ),
                                  ],
                                ),
                              ),
                              subtitle: Text(
                                'Last update 8 min',
                                style: AppText.cardText,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.body.withOpacity(0.5),
                          blurRadius: 6,
                          offset: const Offset(4, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                            left: 12,
                            right: 12,
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            child: Text(
                              'Calories',
                              style: AppText.cardBoldTitle,
                            ),
                          ),
                        ),
                        SizedBox(
                          child: CircularPercentIndicator(
                            radius: 48,
                            lineWidth: 6,
                            animation: true,
                            percent: 0.7,
                            center: const Center(
                              child: Icon(
                                PhosphorIcons.flame,
                                size: 48,
                                color: Color(0xFFCA8748),
                              ),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: const Color(0xFFCA8748),
                            backgroundColor: const Color(0xFF687676),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 0,
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            child: ListTile(
                              title: Text.rich(
                                TextSpan(
                                  text: '862 ',
                                  style: AppText.cardTextBold,
                                  children: [
                                    TextSpan(
                                      text: 'Cal',
                                      style: AppText.cardText,
                                    ),
                                  ],
                                ),
                              ),
                              subtitle: Text(
                                'Last update 8 min',
                                style: AppText.cardText,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
