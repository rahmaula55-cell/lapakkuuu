import 'package:flutter/material.dart';
import 'package:lapakkuuu/models/menumodelr.dart';
import 'package:lapakkuuu/pages/chatkei.dart';
import 'package:lapakkuuu/pages/homer.dart';
import 'package:lapakkuuu/pages/notif_kei.dart';
import 'package:lapakkuuu/pages/profilepr.dart';

class Menupager extends StatefulWidget {
  const Menupager({super.key});

  @override
  State<Menupager> createState() => _MenuPageState();
}

class _MenuPageState extends State<Menupager> {
  int selectedIndex = 0;
  Map<int, Menumodelr> menu = {
    0: Menumodelr(
      page: Homer(),
      icon: Icons.home,
      label: "Home",
      color: Colors.black,
    ),
    1: Menumodelr(
      page: NotifKei(),
      icon: Icons.notifications,
      label: "Notif",
      color: Colors.black,
    ),
    2: Menumodelr(
      page: Chatkei(),
      icon: Icons.mail,
      label: "Chats",
      color: Colors.black,
    ),
    3: Menumodelr(
      page: Profilepr(),
      icon: Icons.person,
      label: "Profile",
      color: Colors.black,
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black87,
        unselectedLabelStyle: TextStyle(color: Colors.black87),
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: menu.entries.map((n) {
          return BottomNavigationBarItem(
            icon: Icon(n.value.icon, color: Colors.black),
            label: n.value.label,
            backgroundColor: Colors.deepPurple.shade800,
            activeIcon: Icon(n.value.icon, color: n.value.color),
          );
        }).toList(),
      ),
      body: menu[selectedIndex]!.page,
    );
  }
}
