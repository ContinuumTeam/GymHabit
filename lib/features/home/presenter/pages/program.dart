import 'package:flutter/material.dart';
import 'package:gymhabit/features/theme/app_colors.dart';
import 'package:gymhabit/features/theme/app_text.dart';

class Program extends StatefulWidget {
  const Program({super.key});

  @override
  State<Program> createState() => _ProgramState();
}

class _ProgramState extends State<Program> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 64,
          title: const Text(
            'Workout',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
          iconTheme: const IconThemeData(color: AppColors.primary),
          centerTitle: true,
          backgroundColor: AppColors.background,
          elevation: 0,
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 24),
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Week 1', style: AppText.titleRegular),
                      Text(' 20% complete', style: AppText.trailingRegular),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: const Icon(
                          Icons.access_time,
                          color: AppColors.primary,
                          size: 16,
                        ),
                      ),
                      Text('60 min', style: AppText.captionBody),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: const Icon(
                          Icons.access_time,
                          color: AppColors.primary,
                          size: 16,
                        ),
                      ),
                      Text('20 workouts', style: AppText.captionBody),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: const Icon(
                            Icons.signal_cellular_alt_rounded,
                            color: AppColors.primary,
                            size: 16,
                          ),
                        ),
                        Text('Strength', style: AppText.captionBody),
                      ],
                    ),
                    Text('🔥 4000 Kcal', style: AppText.captionBody),
                  ],
                ),
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
