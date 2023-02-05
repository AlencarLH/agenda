import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaysOfWeekContainer extends StatelessWidget {
  String dayOfWeek;

  DaysOfWeekContainer({
    required this.dayOfWeek,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 35),
      child: Container(
        height: 25,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text(
            dayOfWeek,
            style: GoogleFonts.getFont('DM Sans',
                fontSize: 15, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
