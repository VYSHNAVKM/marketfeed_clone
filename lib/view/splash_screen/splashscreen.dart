import 'dart:async';
import 'package:flutter/material.dart';
import 'package:marketfeed_clone/utils/imageconstant.dart';
import 'package:marketfeed_clone/view/home/homescreen.dart';
import 'package:marketfeed_clone/view/intro_screen/introscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? number = '';
  Future getphone() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      number = pref.getString('number');
    });
  }

  @override
  void initState() {
    super.initState();
    getphone();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>
                number == null ? IntroScreen() : HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ImageConstant.splashscreenimage),
    );
  }
}
