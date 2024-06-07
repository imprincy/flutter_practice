import 'dart:math';

import 'package:flutter/material.dart';

class Wrapping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wrap Widget",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontFamily: "FontFirst"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            alignment: WrapAlignment.spaceAround,
            runSpacing: 12,
            children: [
              Text(
                "Paragraphs are the building blocks of papers.Many students define paragraph in terms"
                "of length; a paragraph is a group of at least five sentences , a paragraph is half a page long,etc. In reality"
                ",though the unity  "
                "",
                style: TextStyle(
                    fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.pink,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.orange,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ],
          ),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.pink,
            child: Icon(Icons.pan_tool,color: Colors.black,),
          )
        ],
      ),
    );
  }
}
