// ignore_for_file: deprecated_member_use, unused_import

import 'package:flutter/material.dart';
import 'package:zolt_ui/screens/homePage.dart';
import 'package:zolt_ui/screens/loginPage.dart';

import 'package:zolt_ui/screens/registarionScreen.dart';
import 'screens/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zolt',
      theme: ThemeData(
        brightness: Brightness.light,
        accentColor: const Color.fromARGB(255, 108, 68, 68),
      ),
      home: HomePage(),
    );
  }
}
