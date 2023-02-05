import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:numberpicker/numberpicker.dart';

import '../widgets/custom_days_of_week_pills.dart';
import '../widgets/custom_number_picker.dart';

class NewHabitBottomSheet extends StatelessWidget {
  const NewHabitBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      height: MediaQuery.of(context).size.height / 1.3,
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'New Habit',
                style: GoogleFonts.getFont('Ubuntu', fontSize: 30),
              ),
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            child: Text(
              'Give this habit a name',
              style: GoogleFonts.getFont('DM Sans', fontSize: 20),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            height: 20,
            child: const TextField(
              autocorrect: true,
              showCursor: true,
              enableIMEPersonalizedLearning: true,
              decoration: InputDecoration(
                hintText: "Example: Go jogging...",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            child: Text(
              'Remind me every...',
              style: GoogleFonts.getFont('DM Sans', fontSize: 20),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DaysOfWeekContainer(dayOfWeek: 'Sun'),
                DaysOfWeekContainer(dayOfWeek: 'Mon'),
                DaysOfWeekContainer(dayOfWeek: 'Tue'),
                DaysOfWeekContainer(dayOfWeek: 'Wed'),
                DaysOfWeekContainer(dayOfWeek: 'Thu'),
                DaysOfWeekContainer(dayOfWeek: 'Fri'),
                DaysOfWeekContainer(dayOfWeek: 'Sat'),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            child: Text(
              'For how many weeks?',
              style: GoogleFonts.getFont('DM Sans', fontSize: 20),
            ),
          ),
          const SizedBox(height: 20),
          CustomNumberPicker(),
        ],
      ),
    );
  }
}
