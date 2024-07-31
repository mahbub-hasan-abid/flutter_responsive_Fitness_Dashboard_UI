import 'package:fitness_dashboard/constant/constant.dart';
import 'package:fitness_dashboard/utils/summary_part_utils/pie_chart.dart';
import 'package:fitness_dashboard/utils/summary_part_utils/schedule.dart';
import 'package:fitness_dashboard/utils/summary_part_utils/summary_details.dart';
import 'package:flutter/material.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cardBackgroundColor,
      child: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Piechart(),
              Text(
                'Summary',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 16),
              SummaryDetails(),
              SizedBox(height: 40),
              Scheduled(),
            ],
          ),
        ),
      ),
    );
  }
}
