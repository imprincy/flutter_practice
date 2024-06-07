import 'package:flutter/material.dart';

class AddMore extends StatelessWidget {
  final List<String> colorData;

  const AddMore({super.key, required this.colorData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(colorData[index]),
            );
          },
          shrinkWrap: true,
          itemCount: colorData.length,
        )
      ],
    );
  }
}
