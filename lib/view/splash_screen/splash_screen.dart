import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kvbl_subscriber_app/view/bottom_bar/bottom_navi_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BottomNaviBar(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
            width: 100, child: Image.asset('assets/png/kvbl icon image.png')),
      ),
    );
  }
}
