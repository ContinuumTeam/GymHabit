import 'package:flutter/material.dart';
import 'package:gymhabit/features/theme/app_colors.dart';
import 'package:gymhabit/features/theme/app_text.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CardProgramWidget extends StatelessWidget {
  final String description;
  final String icon;
  final String week;
  final String totaTime;
  final String totalWorkouts;
  final String? status = 'inProgress';

  const CardProgramWidget({
    super.key,
    required this.description,
    required this.icon,
    required this.week,
    required this.totaTime,
    required this.totalWorkouts,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.body.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 16),
                child: Image.asset(
                  icon,
                  width: 80,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(week, style: AppText.trailingBold),
                        const Icon(PhosphorIcons.checkCircle,
                            color: AppColors.primary)
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        description,
                        style: const TextStyle(
                          color: AppColors.body,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          totalWorkouts,
                          style: const TextStyle(
                            color: AppColors.body,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        Text.rich(TextSpan(
                          text: totaTime,
                          style: const TextStyle(
                            color: AppColors.body,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
