import 'package:gymhabit/features/auth/presenter/controllers/login_controller.dart';
import 'package:gymhabit/features/auth/presenter/pages/login_page.dart';
import 'package:gymhabit/core/injections/container_injection.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GymHabit',
      initialRoute: "/login",
      routes: {
        // "/spalsh": (context) => const SplashPage(),
        "/login": (context) => LoginPage(
              controller: getIt.get<LoginController>(),
            ),
      },
    );
  }
}
