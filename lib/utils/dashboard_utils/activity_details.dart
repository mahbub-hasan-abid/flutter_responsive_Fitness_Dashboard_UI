import 'package:fitness_dashboard/data/activity_details.dart';
import 'package:fitness_dashboard/utils/dashboard_utils/custome_cards.dart';
import 'package:fitness_dashboard/utils/reponsive.dart';
import 'package:flutter/material.dart';

class ActivityDetails extends StatelessWidget {
  const ActivityDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final activityData = ActivityData();
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12,
        // childAspectRatio: 6 / 4,
      ),
      itemCount: activityData.activityData.length,
      itemBuilder: (BuildContext context, int index) {
        return CustomCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                activityData.activityData[index].icon,
                width: 40,
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 4),
                child: Text(
                  activityData.activityData[index].value,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                activityData.activityData[index].title,
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
