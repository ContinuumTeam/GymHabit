import 'package:flutter/material.dart';
import 'package:gymhabit/features/theme/app_colors.dart';

class ButtonTabBarWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final bool pageActive;
  final int index;
  final Icon icon;
  const ButtonTabBarWidget({
    super.key,
    required this.onPressed,
    required this.index,
    required this.icon,
    required this.pageActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(99),
        ),
        color: pageActive ? AppColors.grey : AppColors.background,
      ),
      child: IconButton(
        onPressed: onPressed,
        color: pageActive ? AppColors.primary : AppColors.grey,
        iconSize: 32,
        icon: icon,
      ),
    );
  }
}
