import 'package:clean_arch_flutter/features/auth/presenter/controllers/login_controller.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller;
  const LoginPage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
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
    );
  }
}
