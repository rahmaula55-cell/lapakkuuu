import 'package:flutter/material.dart';

class Bannersr extends StatefulWidget {
  const Bannersr({super.key});

  @override
  State<Bannersr> createState() => _BannersrState();
}

class _BannersrState extends State<Bannersr> {
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
