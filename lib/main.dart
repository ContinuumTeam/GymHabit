import 'package:gymhabit/app_widget.dart';
import 'package:gymhabit/core/injections/container_injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  ContainerInjection.init();
  runApp(const AppFireBase());
}

class AppFireBase extends StatefulWidget {
  const AppFireBase({super.key});

  @override
  State<AppFireBase> createState() => _AppFireBaseState();
}

class _AppFireBaseState extends State<AppFireBase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        // if (snapshot.hasError) {
        //   return const Material(
        //       child: Center(
        //     child: Text(
        //       'Nao foi possivel iniciar o FireBase',
        //       textDirection: TextDirection.ltr,
        //     ),
        //   ));
        // }

        // if (snapshot.connectionState == ConnectionState.done) {
        return const MaterialApp(
          home: AppWidget(),
        );
        // }

        // return const Material(
        //   child: Center(
        //     child: CircularProgressIndicator(),
        //   ),
        // );
      },
    );
  }
}
