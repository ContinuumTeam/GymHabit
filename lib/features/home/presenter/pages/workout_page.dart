import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:gymhabit/features/theme/app_colors.dart';
import 'package:gymhabit/features/theme/app_text.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/card_program_widget.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  final controller = PageController(viewportFraction: 1.1, keepPage: true);

  @override
  Widget build(BuildContext context) {
    var tag = Localizations.maybeLocaleOf(context)?.toLanguageTag();
    String formattedDate = DateFormat('d MMMM', tag).format(DateTime.now());

    final pages = List.generate(
      2,
      (index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 19),
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
                          dayProps: const EasyDayProps(
                            borderColor: Colors.transparent,
                            todayNumStyle: TextStyle(
                              color: AppColors.background,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            inactiveDayNumStyle: TextStyle(
                              color: AppColors.background,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
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
                height: 300,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 16,
                        bottom: 28,
                      ),
                      child: CircularPercentIndicator(
                          radius: 90,
                          lineWidth: 10,
                          animation: true,
                          percent: 0.7,
                          center: const Text.rich(
                            TextSpan(
                              text: '🔥\n',
                              style: TextStyle(
                                fontSize: 32.0,
                              ),
                              children: [
                                TextSpan(
                                  text: '2000\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 32.0,
                                    color: AppColors.background,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Total Calories',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize: 10.0,
                                    color: AppColors.background,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.orangeAccent,
                          backgroundColor: const Color(0xFF687676)),
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Text.rich(
                            TextSpan(
                              text: '800 ',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: AppColors.background,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Kcal\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize: 16.0,
                                    color: AppColors.background,
                                  ),
                                ),
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
                          padding: const EdgeInsets.symmetric(horizontal: 22),
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
                          child: const Text.rich(
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
                        const Expanded(
                          child: Text.rich(
                            TextSpan(
                              text: '1200 ',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: AppColors.background,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Kcal\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize: 16.0,
                                    color: AppColors.background,
                                  ),
                                ),
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
      growable: true,
    );

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
              // teste
              Container(
                margin: const EdgeInsets.only(bottom: 24),
                width: double.infinity,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: pages.length,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: AppColors.primary,
                    dotColor: Color.fromARGB(255, 174, 173, 177),
                    dotHeight: 10,
                    dotWidth: 12,
                    expansionFactor: 4,
                    spacing: 12,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 24),
                height: 480,
                child: PageView.builder(
                  itemCount: 2,
                  pageSnapping: true,
                  controller: controller,
                  // itemCount: pages.length,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),
              // teste
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Program Progress', style: AppText.titleRegular),
                      Text(' 75% complete', style: AppText.trailingRegular),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        "You'll Bigin the progress with a full body training split, meaning you'll hit all major body parts in each workout",
                        style: TextStyle(
                          color: AppColors.body,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return const CardProgramWidget(
                    week: 'Week 1',
                    description:
                        'Find your fit with an introductory yogo flow and streches plus tips on',
                    totalWorkouts: '3 Workouts',
                    totaTime: '45 min',
                    icon: 'assets/images/program.jpeg',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
