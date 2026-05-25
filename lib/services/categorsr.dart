import 'package:flutter/material.dart';
import 'package:lapakkuuu/models/categomr.dart';
import 'package:lapakkuuu/pages/homer.dart';

List<Categomr> iyaa = [
  Categomr(
    icon: Icons.no_food_outlined,
    title: "lafood",
    color: Colors.green,
    page: Homer(),
  ),
  Categomr(
    icon: Icons.electric_bolt_outlined,
    title: "lapul",
    color: Colors.pink,
    page: Homer(),
  ),
  Categomr(
    icon: Icons.directions_bike,
    title: "lajek",
    color: Colors.black,
    page: Homer(),
  ),
  Categomr(
    icon: Icons.discount_outlined,
    title: "lapro",
    color: Colors.red,
    page: Homer(),
  ),
  Categomr(
    icon: Icons.airplane_ticket_outlined,
    title: "lacer",
    color: Colors.blue,
    page: Homer(),
  ),
  Categomr(
    icon: Icons.lock_clock,
    title: "lader",
    color: Colors.yellow,
    page: Homer(),
  ),
];
