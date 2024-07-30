import 'package:fitness_dashboard/utils/dashboard_utils/activity_details.dart';
import 'package:fitness_dashboard/utils/dashboard_utils/header.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 300,
      child: SingleChildScrollView(
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
        ],
      )),
    );
  }
}
