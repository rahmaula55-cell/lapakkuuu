import 'package:flutter/material.dart';
import 'package:lapakkuuu/pages/pencariankei_page.dart';
import 'package:lapakkuuu/pages/splashscreen_kei.dart';


void main() {
  runApp(lapakku());
}

class lapakku extends StatefulWidget {
  const lapakku({super.key});

  @override
  State<lapakku> createState() => _lapakkuState();
}

class _lapakkuState extends State<lapakku> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PencariankeiPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
