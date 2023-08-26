import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:gymhabit/features/theme/app_colors.dart';
import 'package:gymhabit/features/theme/app_text.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  @override
  Widget build(BuildContext context) {
    var tag = Localizations.maybeLocaleOf(context)?.toLanguageTag();
    String formattedDate = DateFormat('d MMMM', tag).format(DateTime.now());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout'),
        titleTextStyle: AppText.titleHeading,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 24),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      padding: const EdgeInsets.only(
                          top: 16, left: 16, right: 16, bottom: 8),
                      decoration: const BoxDecoration(
                        color: AppColors.body,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Workout Plan',
                                style: AppText.titleCard,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.background,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Text(
                                  formattedDate,
                                  style: AppText.titleCardWhite,
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                EasyDateTimeLine(
                                  locale: "pt_BR",
                                  key: const Key("EasyDateTimeLine"),
                                  activeColor: AppColors.primary,
                                  dayProps: EasyDayProps(
                                    borderColor: Colors.transparent,
                                    todayNumStyle: const TextStyle(
                                      color: AppColors.background,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    inactiveDayNumStyle: AppText.titleCard,
                                    height: 80,
                                    width: 60,
                                  ),
                                  headerProps: const EasyHeaderProps(
                                    showHeader: false,
                                  ),
                                  initialDate: DateTime.now(),
                                  onDateChange: (selectedDate) {
                                    //[selectedDate] the new date selected.
                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Center(
                      child: Container(
                        height: 250,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            CircularPercentIndicator(
                              radius: 80,
                              lineWidth: 8,
                              animation: true,
                              percent: 0.7,
                              center: const Text.rich(
                                TextSpan(
                                  text: '2000\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 38.0,
                                    color: AppColors.background,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Total Calories',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w100,
                                        fontSize: 12.0,
                                        color: AppColors.background,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: Colors.orangeAccent,
                              backgroundColor: Colors.transparent,
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                const Expanded(
                                  child: Text.rich(
                                    TextSpan(
                                      text: '800 Kcal\n',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        color: AppColors.background,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'left Calories',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w100,
                                            fontSize: 12.0,
                                            color: AppColors.background,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        color: AppColors.background,
                                        width: 0.5,
                                      ),
                                      right: BorderSide(
                                        color: AppColors.background,
                                        width: 0.5,
                                      ),
                                    ),
                                  ),
                                  child: const Expanded(
                                    child: Text.rich(
                                      TextSpan(
                                        text: '30\n',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: AppColors.background,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Minutes',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w100,
                                              fontSize: 12.0,
                                              color: AppColors.background,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  child: Text.rich(
                                    TextSpan(
                                      text: '1200\n',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        color: AppColors.background,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Burned Calories',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w100,
                                            fontSize: 12.0,
                                            color: AppColors.background,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
