import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'sidebar/sidebar_layout.dart';

import 'dart:convert';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:mobilesda3/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FABU Alumni Management System",
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Container(
          child: Image(
            image: AssetImage('images/UTM.png'),
          ),
          height: 400.0,
          width: 400.0,
        ),
        nextScreen: MainPage(),
        splashTransition: SplashTransition.sizeTransition,
        backgroundColor: Color.fromRGBO(65, 11, 19, 1.0)
      ),
      theme: ThemeData(
          //accentColor: Colors.white70,
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.white),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  checkLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString("token") == null) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) => LoginPage()),
          (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: Center(child: Text("Home Page")),
      //drawer: SideBarLayout(),
      //drawer: Drawer(),
      body: SideBarLayout(),
    );
  }
}
