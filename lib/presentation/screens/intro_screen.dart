import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:threads_app_set26/presentation/screens/login_screen.dart';
import 'package:threads_app_set26/presentation/screens/main_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  @override
  Widget build(BuildContext context) {

    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.data != null) {
          print('Its Dooooooooooooooooooon');
          return const MainScreen();
        } else {
          print('Its Nooooooooooooooooooot Don');
          return const LoginScreen();
        }
      },
    );
  }
}
