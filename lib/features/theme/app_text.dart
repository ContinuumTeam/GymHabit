import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymhabit/features/theme/app_colors.dart';

class AppText {
  static final titleHome = GoogleFonts.lexendDeca(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: AppColors.heading,
  );

  static final titleRegular = GoogleFonts.mulish(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  static final titleBoldHeading = GoogleFonts.lexendDeca(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: AppColors.heading,
  );

  static final titleHeading = GoogleFonts.mulish(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.heading,
  );

  static final titleCard = GoogleFonts.mulish(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: AppColors.background,
  );

  static final titleCardWhite = GoogleFonts.mulish(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );

  static final titleBoldBackground = GoogleFonts.mulish(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  static final trailingRegular = GoogleFonts.mulish(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.heading,
  );

  static final trailingBold = GoogleFonts.mulish(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.heading,
  );

  static final cardBoldTitle = GoogleFonts.mulish(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    color: AppColors.background,
  );

  static final cardText = GoogleFonts.mulish(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.background,
  );

  static final cardTextBold = GoogleFonts.mulish(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    color: AppColors.background,
  );
}
