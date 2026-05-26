import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lapakkuuu/pages/loginr.dart';

class SplashscreenKei extends StatefulWidget {
  const SplashscreenKei({super.key});

  @override
  State<SplashscreenKei> createState() => _SplashscreenKeiState();
}

class _SplashscreenKeiState extends State<SplashscreenKei> {
  late Timer t;
  @override
  void initState() {
    t = Timer.periodic(
      const Duration(milliseconds: 2500),
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
        margin: EdgeInsetsGeometry.all(0),
        decoration: BoxDecoration(color: Colors.purple.shade700),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 45),
            Text(
              " LAPAKKU",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80),
            ),
            SizedBox(width: 1),
            Image.asset("assets/image/fto.56.png"),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
