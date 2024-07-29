import 'package:fitness_dashboard/utils/dashboard_utils/header.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 18,
        ),
        Header(),
        Text('data')
      ],
    ));
  }
}
