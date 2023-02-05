import 'package:agenda/screens/calendar.dart';
import 'package:agenda/screens/goals.dart';
import 'package:agenda/screens/habits.dart';
import 'package:agenda/screens/home.dart';
import 'package:agenda/screens/tasks.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  final PageController _pageController = PageController();

  final List<Widget> _screens = [
    Habits(), // recurrent habits
    Tasks(), // single tasks (to - do list)
    Goals(), // progress tab
    Calendar(), // self explanatory
  ];

  void _onPageChanged(int index) {}

  void _onItemSelected(int index) {
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        // ignore: sort_child_properties_last
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 80,
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, bottom: 10),
          child: GNav(
            selectedIndex: selectedIndex,
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
            haptic: true,
            iconSize: 33,
            tabBorderRadius: 100,
            gap: 5,
            // curve: Curves.easeOutExpo,
            tabActiveBorder: Border.all(color: Colors.black, width: 3),
            // rippleColor: Color.fromARGB(255, 208, 255, 180),
            // aimation
            duration: const Duration(milliseconds: 300),
            //colors

            backgroundColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(
                255, 0, 0, 0), // fromARGB(255, 226, 243, 243).withOpacity(0.9),
            hoverColor: const Color.fromARGB(255, 237, 253, 255),
            activeColor: Color.fromARGB(255, 255, 255, 255),

            onTabChange: _onItemSelected,

            tabs: const [
              GButton(
                icon: Icons.home_outlined,
                text: 'Routine',
                textStyle: TextStyle(
                    color: Colors.white,
                    //  fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              GButton(icon: Icons.task_alt_outlined, text: 'Tasks'),
              GButton(
                  icon: Icons.rocket_launch_outlined,
                  text: 'Goals'), //bar_chart_rounded
              GButton(icon: Icons.calendar_month_outlined, text: 'Calendar'),
            ],
          ),
        ),
      ),
    );
  }
}
