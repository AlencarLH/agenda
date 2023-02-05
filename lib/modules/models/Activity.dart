import 'package:flutter/material.dart';

class Activity {
  String? name;
  String? label;
  bool? isTimeFree;
  bool? hasChronometer;
  int? chronometerDurationSeconds;
  int? priority;
  Icon? icon;

  Activity(this.name, this.label, this.isTimeFree, this.hasChronometer,
      this.chronometerDurationSeconds, this.priority, this.icon);
}

class RoutineActivity extends Activity {
  int? numberOfWeeks;
  int? numberOfDays;
  int? duration;

  RoutineActivity(
      {required this.numberOfWeeks,
      required this.numberOfDays,
      required this.duration})
      : super(null, null, null, null, null, null, null);
}

class TaskActivity extends Activity {
  bool? isDone;

  TaskActivity({required this.isDone})
      : super(null, null, null, null, null, null, null);
}
