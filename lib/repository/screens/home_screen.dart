import 'package:flutter/material.dart';
import 'package:threads_app_set26/repository/widgets/post_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Logo
              Center(
                child: Image.asset(
                  'assets/images/home_screen/Vector.png',
                  width: MediaQuery.of(context).size.width * 0.072,
                  height: MediaQuery.of(context).size.height * 0.072,
                  color: Colors.black,
                ),
              ),
              Past(),
              Past(),
              Past(),
              Past(),
              Past(),
              Past(),
              Past(),
              Past(),
              Past(),
            ],
          ),
        ),
      ),
    );
  }
}