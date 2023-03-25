import 'package:clean_arch_flutter/core/injections/container_injection.dart';
import 'package:clean_arch_flutter/features/auth/presenter/controllers/login_controller.dart';
import 'package:clean_arch_flutter/features/auth/presenter/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  ContainerInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Arch Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(
        controller: getIt.get<LoginController>(),
      ),
    );
  }
}
