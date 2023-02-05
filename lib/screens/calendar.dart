import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: const Center(
              child: Text(
            "Calendar",
            style: TextStyle(fontSize: 70),
          )),
        ),
      ),
    );
  }
}
