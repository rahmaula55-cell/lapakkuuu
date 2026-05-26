import 'package:flutter/material.dart';

class PencarianwidgetRhma extends StatelessWidget {
  final String imageUrl;
  final String title;
  const PencarianwidgetRhma({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset(imageUrl, height: 80, width: 85), Text(title)],
      ),
    );
  }
}
