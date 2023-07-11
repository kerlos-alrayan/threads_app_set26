import 'package:flutter/material.dart';
import 'package:threads_app_set26/repository/screens/account_screen.dart';
import 'package:threads_app_set26/repository/screens/add_post_screen.dart';
import 'package:threads_app_set26/repository/screens/favorite_screen.dart';
import 'package:threads_app_set26/repository/screens/home_screen.dart';
import 'package:threads_app_set26/repository/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
   int screenIndex = 0;

   List _screen = [
    // Main Screen
    HomeScreen(),
    // Search Screen
    SearchScreen(),
    // Post Screen
    AddPostScreen(),
    // Favorite Screen
    FavoriteScreen(),
    // Account Screen
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation : 0.0,
        backgroundColor: Colors.white,
        currentIndex: screenIndex,
        onTap: (int index){
          setState(() {
            screenIndex = index; //[0, 1, 2, 3, 4]
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Image.asset('assets/images/main_screen/Vector 2.png',width: 24, height: 24, color: Color(0xff0000000),),
            icon: Image.asset('assets/images/main_screen/Vector 2.png',width: 24, height: 24, color: Color(0xffB8B8B8),),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset('assets/images/main_screen/Search.png',width: 24, height: 24, color: Color(0xff0000000),),
            icon: Image.asset('assets/images/main_screen/Search.png',width: 24, height: 24, color: Color(0xffB8B8B8),),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset('assets/images/main_screen/Write.png',width: 24, height: 24, color: Color(0xff0000000),),
            icon: Image.asset('assets/images/main_screen/Write.png',width: 24, height: 24, color: Color(0xffB8B8B8),),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset('assets/images/main_screen/Vector.png',width: 24, height: 24, color: Color(0xff0000000),),
            icon: Image.asset('assets/images/main_screen/Vector.png',width: 24, height: 24, color: Color(0xffB8B8B8),),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset('assets/images/main_screen/account.png',width: 24, height: 24, color: Color(0xff0000000),),
            icon: Image.asset('assets/images/main_screen/account.png',width: 24, height: 24, color: Color(0xffB8B8B8),),
            label: '',
          ),
        ],
      ),
      body: _screen[screenIndex],
    );
  }
}
