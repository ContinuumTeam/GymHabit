import 'package:flutter/material.dart';

import '../../../../../theme/app_colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final authController = AuthController();
    // authController.currentUser(context);
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
          // children: [
          //   Center(
          //     child: Image.asset(AppImage.union),
          //   ),
          //   Center(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         // Padding(
          //         //   padding: const EdgeInsets.only(bottom: 20),
          //         //   child: Image.asset(AppImage.codeBar),
          //         // ),
          //         // Center(
          //         //   child: Image.asset(AppImage.logo),
          //         // )
          //       ],
          //     ),
          //   ),
          // ],
          ),
    );
  }
}
