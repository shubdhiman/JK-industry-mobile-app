import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:jk_industry/Pages/about_page.dart';
import 'package:jk_industry/Pages/contact_page.dart';
import 'package:jk_industry/Pages/home_page.dart';
import 'package:jk_industry/Utils/industry.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final List<Widget> pages= [HomePage(), AboutPage(), ContactPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Industry.background_color,
      appBar: AppBar(title: Text('Home')),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        // selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Industry.app_color,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white12,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit), title: Text("About")),
          BottomNavigationBarItem(
              icon: Icon(Icons.error), title: Text("Contact us")),
       /*   BottomNavigationBarItem(
              icon: Icon(Icons.art_track), title: Text("Theme")),*/
        ],
      ),
    );
  }
}
