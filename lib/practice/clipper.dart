import 'package:flutter/material.dart';

class React extends StatelessWidget {
  const React({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        elevation: 7,
        title: Text("Clipper"),
      )
      ),body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: Container(
          color: Colors.yellow.shade400,
          width: 200,
          height: 200,
              ),
        ),
      ),
    );
  }
}
