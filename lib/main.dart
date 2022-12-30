import 'package:app_clinic/screens/auth_screen/Create_profie_screen.dart';
import 'package:app_clinic/screens/home_screens/bottom_navigation.dart';
import 'package:app_clinic/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'screens/home_screens/screens/profile_sreen/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavBar(),
    );
  }
}
