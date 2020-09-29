import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:jk_industry/SplashScreen/splash_screen.dart';
import 'package:jk_industry/Utils/industry.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Industry.app_color,
        // automaticallyImplyLeading: false,
      ),*/
      body: Container(
        margin: EdgeInsets.only(top: 30),
        color: Industry.background_color,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [

              InkWell(
                onTap: (){
                  print("Hello");
                },
                splashColor: Colors.red,
                child: Ink(
                  child: Text("Hello")
                ),
              ),
              InkWell(
                onTap: (){
/*
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => SplashScreen()));
*/
                },
                splashColor: Industry.app_color,
                child: Ink(
                  child: Stack(
                    children: [
                      mainBox('assets/images/raw.jpg'),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(10.0)),
                          color: Colors.black54,
                        ),
                        margin: EdgeInsets.only(top: 15, left: 15),
                        width: 150,
                        height: 50,
                        child: Center(
                            child: Text(
                          "Raw material",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: Industry.xxlargeText,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                splashColor: Industry.app_color,
                child: Ink(
                  child: Stack(
                    children: [
                      mainBox('assets/images/door.jpg'),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(10.0)),
                          color: Colors.black54,
                        ),
                        margin: EdgeInsets.only(top: 15, left: 15),
                        width: 230,
                        height: 50,
                        child: Center(
                            child: Text(
                              "Fabrication material",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Industry.xxlargeText,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget mainBox(String img) {
    return Container(
      margin: EdgeInsets.all(12),
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Image.asset(
          img,
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        // margin: EdgeInsets.all(10),
      ),
    );
  }
}
