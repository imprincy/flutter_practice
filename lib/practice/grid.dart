import 'package:flutter/material.dart';

class Gridd extends StatelessWidget {
  var arrColors = [
    Colors.pink,
    Colors.red,
    Colors.yellow,
    Colors.cyan,
    Colors.green,
    Colors.grey,
    Colors.orange,
    Colors.blueAccent
  ];

  Gridd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid view Learning"),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 11,
              mainAxisSpacing: 11,
              children: [
                Container(
                  color: arrColors[0],
                ),
                Container(
                  color: arrColors[1],
                ),
                Container(
                  color: arrColors[2],
                ),
                Container(
                  color: arrColors[3],
                ),
                Container(
                  color: arrColors[4],
                ),
                Container(
                  color: arrColors[5],
                ),
                Container(
                  color: arrColors[6],
                ),
                Container(
                  color: arrColors[7],
                ),
              ],
            ),
          ),
          Container(
            height: 100,
          ),
          Container(
            height: 200,
            child: GridView.extent(
                mainAxisSpacing: 11,
                crossAxisSpacing: 11,
                maxCrossAxisExtent: 100),
          ),
          Container(
            color: arrColors[0],
          ),
          Container(
            color: arrColors[1],
          ),
          Container(
            color: arrColors[2],
          ),
          Container(
            color: arrColors[3],
          ),
          Container(
            color: arrColors[4],
          ),
          Container(
            color: arrColors[5],
          ),
          Container(
            color: arrColors[6],
          ),
          Container(
            color: arrColors[7],
          ),
        ],
      ),
    );
  }
}
