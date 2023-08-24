import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:gymhabit/features/theme/app_colors.dart';

import 'core/injections/container_injection.dart';
import 'features/auth/presenter/controllers/login_controller.dart';
import 'features/auth/presenter/screens/pages/login/login_page.dart';
import 'features/home/presenter/home_page.dart';

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
        "/login": (context) => LoginPage(
              controller: getIt.get<LoginController>(),
            ),
        "/home": (context) => const HomePage(),
      },
    );
  }
}
