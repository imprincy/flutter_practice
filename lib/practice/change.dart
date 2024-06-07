import 'package:flutter/material.dart';

class MealTime extends StatefulWidget {
  const MealTime({super.key});

  @override
  State<MealTime> createState() => _MealTimeState();
}

class _MealTimeState extends State<MealTime> {
  RangeValues values = RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text("Ranges"),
      ),
      body: Center(
        child: RangeSlider(
          values: values,
          labels: labels,
          divisions: 10,
          min: 0,
          max: 1,
          activeColor: Colors.black,
          onChanged: (newValue) {
            values = newValue;
            print("${newValue.start},${newValue.end}");
            setState(() {});
          },
        ),
      ),
    );
  }
}
