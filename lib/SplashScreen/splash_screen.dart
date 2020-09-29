import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jk_industry/HomeScreen/home_screen.dart';
import 'package:jk_industry/Utils/industry.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreenFull();
  }
}

class SplashScreenFull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenEvent();
  }
}

class SplashScreenEvent extends State<SplashScreenFull> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              Industry.app_color,
              Colors.blue[700],
              Colors.blue[600],
              Colors.blue[400],
            ],
          ),
        ),
        // color: Industry.app_color,
        child: Center(
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    /*Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Welcome to", style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),),
                    ),*/
                    Image.asset(
                      'assets/images/jk_logo_white.png',
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Industry",
                        style: GoogleFonts.gentiumBookBasic(
                            fontStyle: FontStyle.normal,
                            color: Colors.white,
                            fontSize: Industry.xxlargeText,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Lottie.asset("assets/images/splash_loading.json",
                    width: MediaQuery.of(context).size.width / 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
