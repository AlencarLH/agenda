import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class CustomNumberPicker extends StatefulWidget {
  const CustomNumberPicker({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomNumberPicker> createState() => _CustomNumberPickerState();
}

class _CustomNumberPickerState extends State<CustomNumberPicker> {
  @override
  Widget build(BuildContext context) {
    int _currentValue = 3;
    return NumberPicker(
      axis: Axis.horizontal,
      value: _currentValue,
      minValue: 0,
      maxValue: 100,
      onChanged: (value) => setState(() => _currentValue = value),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black26),
      ),
    );
  }
}
