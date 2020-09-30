import 'package:flutter/material.dart';
import 'package:jk_industry/SplashScreen/splash_screen.dart';
import 'package:jk_industry/Utils/industry.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Poppins", primaryColor: Industry.app_color),
      title: 'JK Industry',
      home: SplashScreen(),
    );
  }
}
