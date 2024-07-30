import 'package:fitness_dashboard/utils/dashboard_utils/activity_details.dart';
import 'package:fitness_dashboard/utils/dashboard_utils/bar_graph_card.dart';
import 'package:fitness_dashboard/utils/dashboard_utils/header.dart';
import 'package:fitness_dashboard/utils/dashboard_utils/line_cart_card.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 300,
      child: const SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 18,
            ),
            Header(),
            SizedBox(
              height: 18,
            ),
            ActivityDetails(),
            SizedBox(
              height: 18,
            ),
            LineChartCard(),
            SizedBox(
              height: 18,
            ),
            BarGraphCard(),
          ],
        ),
      )),
    );
  }
}
