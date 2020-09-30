import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
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
  ValueNotifier<int> selectedIndex = ValueNotifier(0);

  final List<Widget> pages = [HomePage(), AboutPage(), ContactPage()];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndex,
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: Industry.background_color,
          appBar: AppBar(title: Text('Home')),
          body: pages[value],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                // sets the background color of the `BottomNavigationBar`
                canvasColor: Industry.app_color,
                // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                primaryColor: Colors.red,
                textTheme: Theme.of(context)
                    .textTheme
                    .copyWith(caption: new TextStyle(color: Colors.yellow))),
            child: BottomNavigationBar(
              onTap: (index) {
                selectedIndex.value = index;
              },
              currentIndex: value,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey[400],
              //  backgroundColor: Industry.app_color,
              type: BottomNavigationBarType.shifting,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), title: Text("Home")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.info_outline), title: Text("About")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.my_location), title: Text("Contact us")),
                /*   BottomNavigationBarItem(
                  icon: Icon(Icons.art_track), title: Text("Theme")),*/
              ],
            ),
          ),
        );
      },
    );
  }
}
