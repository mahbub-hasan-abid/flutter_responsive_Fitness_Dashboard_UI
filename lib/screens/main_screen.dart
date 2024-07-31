import 'package:fitness_dashboard/utils/dash_board.dart';
import 'package:fitness_dashboard/utils/reponsive.dart';
import 'package:fitness_dashboard/utils/side_menu.dart';
import 'package:fitness_dashboard/utils/summary_part.dart';
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
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
        drawer: !isDesktop
            ? SizedBox(
                width: 250,
                child: SideMenu(),
              )
            : null,
        endDrawer: Responsive.isMobile(context)
            ? SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: const SummaryWidget(),
              )
            : null,
        body: SafeArea(
            child: Row(
          children: [
            if (isDesktop)
              Expanded(
                  flex: 2,
                  child: Container(
                    child: SideMenu(),
                  )),
            Expanded(
                flex: 7,
                child: Container(
                  //color: Colors.amber,
                  child: DashBoard(),
                )),
            if (isDesktop) Expanded(flex: 3, child: SummaryWidget()),
          ],
        )));
  }
}
