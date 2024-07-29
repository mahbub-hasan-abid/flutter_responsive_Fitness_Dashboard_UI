import 'package:fitness_dashboard/utils/dash_board.dart';
import 'package:fitness_dashboard/utils/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Row(
      children: [
        Expanded(
            flex: 2,
            child: Container(
              child: SideMenu(),
            )),
        Expanded(flex: 7, child: DashBoard()),
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue,
            )),
      ],
    )));
  }
}
