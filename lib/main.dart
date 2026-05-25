import 'package:flutter/material.dart';
import 'package:lapakkuuu/pages/loginr.dart';

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
    return MaterialApp(home: Loginr(), debugShowCheckedModeBanner: false);
  }
}
