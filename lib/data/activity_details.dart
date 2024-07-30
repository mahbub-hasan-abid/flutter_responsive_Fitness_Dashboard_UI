import 'package:fitness_dashboard/models/activity_model.dart';

class ActivityData {
  final activityData = [
    ActivityModel(
        icon: 'assets/icons/fire.png', title: 'Calories burned', value: '405'),
    ActivityModel(
        icon: 'assets/icons/distance.png',
        title: 'Distance walked',
        value: '3.2 km'),
    ActivityModel(
        icon: 'assets/icons/steps.png', title: 'Steps taken', value: '12,345'),
    ActivityModel(
        icon: 'assets/icons/sleep.png', title: 'Sleep', value: '7h32m'),
  ];
}
