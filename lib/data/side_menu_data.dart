import 'package:fitness_dashboard/models/menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final menu = [
    MenuModel(icons: Icons.home, title: 'Dashboad'),
    MenuModel(icons: Icons.person, title: 'Profile'),
    MenuModel(icons: Icons.run_circle, title: 'Exersice'),
    MenuModel(icons: Icons.settings, title: 'Settings'),
    MenuModel(icons: Icons.history, title: 'History'),
    MenuModel(icons: Icons.logout, title: 'SignOut'),
  ];
}
