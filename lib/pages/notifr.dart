import 'package:flutter/material.dart';

class Notifr extends StatefulWidget {
  const Notifr({super.key});

  @override
  State<Notifr> createState() => _HomerState();
}

class _HomerState extends State<Notifr> {
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
