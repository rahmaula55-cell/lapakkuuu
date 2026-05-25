import 'package:flutter/material.dart';
import 'package:lapakkuuu/models/menumodelr.dart';
import 'package:lapakkuuu/pages/chatsr.dart';
import 'package:lapakkuuu/pages/homer.dart';

List<Menumodelr> menu = [
  Menumodelr(
    page: Homer(),
    icon: Icons.home,
    label: "Home",
    color: Colors.black,
  ),
  Menumodelr(
    page: Homer(),
    icon: Icons.notifications,
    label: "Notif",
    color: Colors.black,
  ),
  Menumodelr(
    page: Chatsr(),
    icon: Icons.mail,
    label: "Chats",
    color: Colors.black,
  ),
  Menumodelr(
    page: Chatsr(),
    icon: Icons.person,
    label: "Profile",
    color: Colors.black,
  ),
];
