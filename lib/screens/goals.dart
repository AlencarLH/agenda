import 'package:flutter/material.dart';

class Goals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: const Center(
              child: Text(
            "Goals",
            style: TextStyle(fontSize: 70),
          )),
        ),
      ),
    );
  }
}
