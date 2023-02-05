import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'new_habit.dart';

class Habits extends StatefulWidget {
  @override
  State<Habits> createState() => _HabitsState();
}

class _HabitsState extends State<Habits> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                setState(() {
                  showMaterialModalBottomSheet(
                    context: context,
                    builder: (context) => const NewHabitBottomSheet(),
                  );
                });
              },
              tooltip: 'New Habit',
              backgroundColor: Color.fromARGB(255, 157, 223, 240),
              child: const Icon(Icons.add),
            ),
            body: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  color: Colors.white,
                  // ignore: prefer_const_constructors
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Text(
                      'My habits',
                      style: GoogleFonts.getFont('DM Sans',
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TableCalendar(
                  calendarFormat: CalendarFormat.week,
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                  calendarStyle: const CalendarStyle(
                    isTodayHighlighted: true,
                    todayDecoration: BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                  ),
                ),
                const SizedBox(height: 25),
                const CustomPageViewBuilder(),
              ],
            )),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class CustomPageViewBuilder extends StatelessWidget {
  const CustomPageViewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 2,
          itemBuilder: (context, index) {
            return Column(
              children: const [
                HabitTile(),
                HabitTile(),
                HabitTile(),
                HabitTile(),
                HabitTile(),
              ],
            );
          }),
    );
  }
}

class HabitTile extends StatelessWidget {
  const HabitTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          color: Colors.white,
          child: Container(
            child: const ListTile(
              dense: true,
              leading: Icon(Icons.wb_sunny_outlined),
              trailing: Icon(Icons.surfing_outlined),
              title: Text('Habits', style: TextStyle(fontSize: 30)),
              subtitle: Text('subtitle', style: TextStyle(fontSize: 20)),
            ),
          )),
    );
  }
}
