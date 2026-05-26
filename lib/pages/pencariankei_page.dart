import 'package:flutter/material.dart';

class PencariankeiPage extends StatefulWidget {
  const PencariankeiPage({super.key});

  @override
  State<PencariankeiPage> createState() => _PencariankeiPageState();
}

class _PencariankeiPageState extends State<PencariankeiPage> {
  TextEditingController _pencarian = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(color: Colors.purple.shade700),
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
                      topLeft: Radius.circular(400),
                      bottomLeft: Radius.circular(400),
                      bottomRight: Radius.circular(400),
                      topRight: Radius.circular(400),
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
