import 'package:flutter/material.dart';
import 'package:gymhabit/features/theme/app_colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class NutritionInfoWidget extends StatelessWidget {
  final int streak;
  const NutritionInfoWidget({super.key, required this.streak});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: AppColors.stroke),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nutrition Plan',
                        style: TextStyle(
                          color: AppColors.card,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12, bottom: 12),
                        child: Text(
                          'Your plan depends be daily intake:',
                          style: TextStyle(
                            color: AppColors.card,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: '800g\n',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: AppColors.background,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Carbs',
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
                          Text.rich(
                            TextSpan(
                              text: '30g\n',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: AppColors.background,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Fat',
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
                          Text.rich(
                            TextSpan(
                              text: '1200g\n',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: AppColors.background,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Protein',
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
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircularPercentIndicator(
                      radius: 55,
                      lineWidth: 5,
                      animation: true,
                      percent: 0.7,
                      center: const Center(
                        child: Text(
                          "2122\nCalories",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: AppColors.background,
                          ),
                        ),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: AppColors.secondary,
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: const Row(
                      children: [
                        Text(
                          'See More ',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: AppColors.background,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.background,
                          size: 12,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
