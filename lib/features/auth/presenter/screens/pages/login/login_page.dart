import 'package:google_sign_in/google_sign_in.dart';
import 'package:gymhabit/features/auth/presenter/controllers/login_controller.dart';
import 'package:gymhabit/features/auth/presenter/widgets/social_login_button.dart';
import 'package:gymhabit/features/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../theme/app_images.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller;
  const LoginPage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: AppColors.primary),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Center(
                child: Image.asset(
                  AppImage.logo,
                  width: 200,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  SocialButton(
                    color: const TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    background: AppColors.shape,
                    icon: AppImage.googleIcon,
                    label: 'Entrar com Google',
                    onTap: () async {
                      GoogleSignIn googleSignIn = GoogleSignIn(
                        scopes: [
                          'email',
                        ],
                      );
                      try {
                        final response = await googleSignIn.signIn();
                        print(response);
                      } catch (error) {
                        print(error);
                      }
                    },
                  ),
                  SocialButton(
                    background: AppColors.black,
                    color: const TextStyle(
                      color: AppColors.background,
                      fontWeight: FontWeight.bold,
                    ),
                    icon: AppImage.appleIcon,
                    label: 'Entrar com Apple',
                    onTap: () async {},
                  ),
                  SocialButton(
                    background: AppColors.blue,
                    color: const TextStyle(
                      color: AppColors.background,
                      fontWeight: FontWeight.bold,
                    ),
                    icon: AppImage.facebookIcon,
                    label: 'Entrar com Facebook',
                    onTap: () async {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
