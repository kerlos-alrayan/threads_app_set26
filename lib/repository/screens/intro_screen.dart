import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:threads_app_set26/repository/screens/login_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if(FirebaseAuth.instance.currentUser == null){
      return const LoginScreen();
    }else {
      return const Scaffold();
    }
  }
}
