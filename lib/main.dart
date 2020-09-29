import 'package:flutter/material.dart';
import 'package:jk_industry/SplashScreen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Poppins"),
      title: 'JK Industry',
      home: SplashScreen(),
    );
  }
}

