import 'package:flutter/material.dart';
import 'package:lapakkuuu/models/menumodelr.dart';
import 'package:lapakkuuu/pages/chatsr.dart';
import 'package:lapakkuuu/pages/homer.dart';
import 'package:lapakkuuu/pages/notifr.dart';

List<Menumodelr> menu = [
  Menumodelr(
    page: Homer(),
    icon: Icons.home,
    label: "Home",
    color: Colors.black,
  ),
  Menumodelr(
    page: Notifr(),
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
];
