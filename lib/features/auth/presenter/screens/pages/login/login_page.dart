import 'package:gymhabit/features/auth/presenter/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:gymhabit/features/home/presenter/components/social_login_button.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller;
  const LoginPage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () async {
                  await controller
                      .doLogin(email: 'email@email.com', password: '12345678')
                      .then((value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(value.name),
                      ),
                    );
                  }).catchError((error) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(error.message),
                    ));
                  });
                },
                child: const Text('Login')),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 50),
            child: SocialButton(
              onTap: () {
                // loginController.googleSignIn(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
