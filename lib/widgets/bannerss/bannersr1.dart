import 'package:flutter/material.dart';

class Bannersr1 extends StatefulWidget {
  const Bannersr1({super.key});

  @override
  State<Bannersr1> createState() => _BannersrState();
}

class _BannersrState extends State<Bannersr1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/image/banner0.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
