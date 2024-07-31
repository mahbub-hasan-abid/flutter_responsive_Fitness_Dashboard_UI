import 'package:fitness_dashboard/utils/dashboard_utils/activity_details.dart';
import 'package:fitness_dashboard/utils/dashboard_utils/bar_graph_card.dart';
import 'package:fitness_dashboard/utils/dashboard_utils/header.dart';
import 'package:fitness_dashboard/utils/dashboard_utils/line_cart_card.dart';
import 'package:fitness_dashboard/utils/reponsive.dart';
import 'package:fitness_dashboard/utils/summary_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    //final isTablet = Responsive.isTablet(context);

    return Container(
      //width: 300,
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            const Header(),
            const SizedBox(
              height: 18,
            ),
            const ActivityDetails(),
            const SizedBox(
              height: 18,
            ),
            const LineChartCard(),
            const SizedBox(
              height: 18,
            ),
            const BarGraphCard(),
            const SizedBox(
              height: 18,
            ),
            if (Responsive.isTablet(context)) const SummaryWidget()
          ],
        ),
      )),
    );
  }
}
