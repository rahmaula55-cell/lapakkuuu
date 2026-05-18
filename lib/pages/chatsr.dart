import 'package:flutter/material.dart';

class Chatsr extends StatefulWidget {
  const Chatsr({super.key});

  @override
  State<Chatsr> createState() => _HomerState();
}

class _HomerState extends State<Chatsr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.white),
      ),
    );
  }
}
