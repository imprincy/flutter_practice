import 'package:flutter/material.dart';

class Richer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: RichText(
        text: TextSpan(
            style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
                fontFamily: "FontFirst",
                color: Colors.grey),
            children: [
              TextSpan(text: "Princy "),
              TextSpan(
                  text: "Sharma* ",
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 23,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: "I Love my Husband! ",style: TextStyle(color: Colors.red)),
              TextSpan(text: "Shivam Sharma",style: TextStyle(color: Colors.black,fontSize: 22))
            ]),
      ),
    );
  }
}
