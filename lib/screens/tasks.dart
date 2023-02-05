import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: const Center(
              child: Text(
            "Tasks",
            style: TextStyle(fontSize: 70),
          )),
        ),
      ),
    );
  }
}
