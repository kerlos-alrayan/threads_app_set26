import 'package:flutter/material.dart';
import 'package:threads_app_set26/presentation/screens/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => IntroScreen()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/home_screen/Vector.png',
                  color: Colors.white,
                  width: 60,
                ),
              ),
              Text(
                'Eng: Kerlos Alrayan',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
