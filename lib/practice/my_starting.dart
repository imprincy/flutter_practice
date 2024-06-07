import 'package:flutter/material.dart';
import 'package:my_test/main.dart';

class MyStarting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "My New Learning",
            // style: getMyFontStyle(),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Image.asset("assets/images/pexels.jpg"),
              SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("My first text"),
              ),
            ],
          ),
        ));
  }
}
