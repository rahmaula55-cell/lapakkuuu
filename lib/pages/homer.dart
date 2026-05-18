import 'package:flutter/material.dart';

class Homer extends StatefulWidget {
  const Homer({super.key});

  @override
  State<Homer> createState() => _HomerState();
}

class _HomerState extends State<Homer> {
  TextEditingController _pencarian = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.deepPurple.shade700),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _pencarian,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "pencarian",
                  alignLabelWithHint: true,
                  focusColor: Colors.blueAccent,
                  fillColor: Colors.white,
                  filled: true,
                  icon: Icon(Icons.search_rounded, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(150),
                      bottomLeft: Radius.circular(150),
                      bottomRight: Radius.circular(150),
                      topRight: Radius.circular(150),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        //banner
      ),
    );
  }
}
