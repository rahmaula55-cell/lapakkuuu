import 'package:flutter/material.dart';
import 'package:lapakkuuu/models/menumodelr.dart';
import 'package:lapakkuuu/pages/chatkei.dart';
import 'package:lapakkuuu/pages/homer.dart';
import 'package:lapakkuuu/pages/notif_kei.dart';


List<Menumodelr> menu = [
  Menumodelr(
    page: Homer(),
    icon: Icons.home,
    label: "Home",
    color: Colors.black,
  ),
  Menumodelr(
    page: NotifKei(),
    icon: Icons.notifications,
    label: "Notif",
    color: Colors.black,
  ),
  Menumodelr(
    page: Chatkei(),
    icon: Icons.mail,
    label: "Chats",
    color: Colors.black,
  ),
];
