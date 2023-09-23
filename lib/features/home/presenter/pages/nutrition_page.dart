import 'package:flutter/material.dart';
import 'package:gymhabit/features/home/presenter/widgets/nutrition_info_widget.dart';
import 'package:gymhabit/features/theme/app_text.dart';

class NutritionPage extends StatefulWidget {
  const NutritionPage({super.key});

  @override
  State<NutritionPage> createState() => _NutritionPageState();
}

class _NutritionPageState extends State<NutritionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Nutrition'),
        titleTextStyle: AppText.titleHeading,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            NutritionInfoWidget(
              streak: 3,
            )
          ],
        ),
      ),
    );
  }
}
