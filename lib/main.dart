import 'package:flutter/material.dart';
import 'package:fyre_stream/ui/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:fyre_stream/ui/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fyre stream',
      theme: ThemeData(primaryColor: const Color(0xff264f6b)),
      home: const CustomBottomNavigationBar(),
    );
  }
}
