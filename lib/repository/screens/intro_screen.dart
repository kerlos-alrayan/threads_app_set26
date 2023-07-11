import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:threads_app_set26/repository/screens/login_screen.dart';
import 'package:threads_app_set26/repository/screens/main_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return StreamBuilder(
       stream: FirebaseAuth.instance.authStateChanges(),
       builder: (context, snapshot){
         if(snapshot.data != null){
           return const MainScreen();
         }else{
           return const LoginScreen();
         }
       }
   );
  }
}
