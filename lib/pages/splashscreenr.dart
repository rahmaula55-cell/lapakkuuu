import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lapakkuuu/pages/loginr.dart';

class Splashscreenr extends StatefulWidget {
  const Splashscreenr({super.key});

  @override
  State<Splashscreenr> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splashscreenr> {
  late Timer t;

  @override
  void initState() {
    t = Timer.periodic(
      const Duration(seconds: 5),
      (timer) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Loginr()),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.white]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Image.asset("name"),
            SizedBox(height: 70),
            Image.asset("assets/image/lapakku.jpeg", width: 100, height: 60),
          ],
        ),
      ),
    );
  }
}
