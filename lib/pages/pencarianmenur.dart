import 'package:flutter/material.dart';

class Pencarianmenur extends StatefulWidget {
  const Pencarianmenur({super.key});

  @override
  State<Pencarianmenur> createState() => _PencarianmenurState();
}

class _PencarianmenurState extends State<Pencarianmenur> {
  TextEditingController _pencarian = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                  prefixIcon: Icon(Icons.search_rounded),
                  focusColor: Colors.blueAccent,
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(500),
                      bottomLeft: Radius.circular(500),
                      bottomRight: Radius.circular(500),
                      topRight: Radius.circular(500),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
