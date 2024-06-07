import 'package:flutter/material.dart';

class Stacking extends StatefulWidget {
  const Stacking({Key? key}) : super(key: key);

  @override
  State<Stacking> createState() => _StackingState();
}

class _StackingState extends State<Stacking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learning Stack"),
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            width: 200,
            child: Text("Hello My World"),
            color: Colors.yellow,
          ),
          Container(
            height: 80,
            width: 70,
            color: Colors.green,
          ),
          Container(
            height: 100,
            width: 150,
            child: Center(child: Center(child: Text("Hello My Princess"))),
            color: Colors.white70,
          ),
        ],
      ),
    );
  }
}
