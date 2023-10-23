import 'package:car_ui/Ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:car_ui/constant/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ui Car',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBackGroundColor,
      ),
      home: const HomePage(),
    );
  }
}
