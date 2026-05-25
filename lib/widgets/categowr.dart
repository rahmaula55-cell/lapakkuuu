import 'package:flutter/material.dart';
import 'package:lapakkuuu/pages/homer.dart';

class Categowr extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final Widget page;
  const Categowr({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Homer()),
      ),
      child: Card(
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: color),
            Text(title),
          ],
        ),
      ),
    );
  }
}
