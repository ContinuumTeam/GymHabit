import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_images.dart';
import '../../../theme/app_text.dart';

class SocialButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final String icon;
  final Color background;
  final TextStyle color;

  const SocialButton({
    Key? key,
    required this.onTap,
    required this.label,
    required this.icon,
    required this.background,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        constraints: const BoxConstraints(minWidth: 200, maxWidth: 300),
        height: 56,
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(8),
          // border: const Border.fromBorderSide(
          //   BorderSide(color: AppColors.stroke),
          // ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(color: AppColors.stroke, width: 2),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      icon,
                      width: 24,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    label,
                    style: color,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
