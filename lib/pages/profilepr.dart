import 'package:flutter/material.dart';

class Profilepr extends StatefulWidget {
  const Profilepr({super.key});

  @override
  State<Profilepr> createState() => _Profilepr();
}

class _Profilepr extends State<Profilepr> {
  String username = "";
  String id = "";
  String email = "";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Row(
          children: [
            Text(
              "Profile",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(color: Colors.purple.shade700),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurpleAccent,
          child: Image.asset("assets/image/fto.56.png", height: 70),
        ),
      ),
    );
  }
}
