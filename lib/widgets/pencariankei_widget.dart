import 'package:flutter/material.dart';

class PencariankeiWidget extends StatefulWidget {
  final String name;
  final String price;
  final String ratting;
  final String imageUrl;
  final double width, height;
  const PencariankeiWidget({
    super.key,
    required this.name,
    required this.price,
    required this.ratting,
    required this.width,
    required this.imageUrl,
    required this.height,
  });

  @override
  State<PencariankeiWidget> createState() => _PencariankeiWidgetState();
}

class _PencariankeiWidgetState extends State<PencariankeiWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        width: widget.width,
        height: widget.height,
        padding: EdgeInsets.all(10),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.5, 0.5),
              color: Colors.blue,
              blurRadius: 2,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(10),
              child: Image.asset(
                widget.imageUrl,
                width: widget.width,
                height: 205,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(widget.name, style: TextStyle(fontWeight: FontWeight.bold)),
            Card(
              elevation: 2,
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Text(widget.ratting.toString()),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  elevation: 2,
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Text(widget.price.toString()),
                  ),
                ),
                ],
            ),
          ],
        ),
      ),
    );
  }
}