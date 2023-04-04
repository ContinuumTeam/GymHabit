import 'package:flutter/material.dart';
import 'package:gymhabit/features/auth/presenter/pages/theme/app_colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class StreakInfoWidget extends StatelessWidget {
  final int streak;
  const StreakInfoWidget({super.key, required this.streak});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: AppColors.stroke),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularPercentIndicator(
                radius: 60,
                lineWidth: 8,
                animation: true,
                percent: 0.7,
                center: Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                      child: Text(
                        "75%",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.orange,
                        ),
                      ),
                    )),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: AppColors.primary,
                backgroundColor: Colors.transparent,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Week achievement',
                        style: TextStyle(
                          color: AppColors.heading,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Very good, you have achieved 75% days of you weekly achievement based on your fitness plan',
                          style: TextStyle(
                            color: AppColors.body,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}