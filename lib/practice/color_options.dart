import 'package:flutter/material.dart';

class ColorOpt extends StatelessWidget {
  final List<String>? dataItem;

  const ColorOpt({super.key, this.dataItem});

  @override
  Widget build(BuildContext context) {
    if(dataItem != null && dataItem!.isNotEmpty) {
      return Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: dataItem!.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(dataItem![index]),
              );
            },
          ),
        ],
      );
    } else {
      return SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              child: Text("No Item Found"),
            ),
          ],
        ),
      );
    }
  }
}
