import 'package:flutter/material.dart';
import 'package:project_muskan/notifiers/notifiers.dart';
import 'package:project_muskan/pages/bottom_navigation_bar.dart';
import 'package:project_muskan/pages/home_screen.dart';
import 'package:project_muskan/pages/profile_screen.dart';
import 'package:project_muskan/pages/settings_screen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: selectedpage,
        builder: (context, value, child) {
          if(value==0){
            return HomeScreen();
          }else if(value==1){
            return ProfileScreen();
          }else{
            return SettingsScreen();
          }
        }
      ),
      bottomNavigationBar: BottomNavigationBarExt(),
    );
  }
}
