import 'package:google_fonts/google_fonts.dart';
import 'package:gymhabit/features/auth/presenter/controllers/login_controller.dart';
import 'package:gymhabit/features/auth/presenter/pages/home_page.dart';
import 'package:gymhabit/features/auth/presenter/pages/login_page.dart';
import 'package:gymhabit/core/injections/container_injection.dart';
import 'package:flutter/material.dart';
import 'package:gymhabit/features/auth/presenter/pages/theme/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GymHabit',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          background: AppColors.background,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/home",
      routes: {
        // "/spalsh": (context) => const SplashPage(),
        // "/login": (context) => LoginPage(
        //       controller: getIt.get<LoginController>(),
        //     ),
        "/home": (context) => const HomePage(),
      },
    );
  }
}
