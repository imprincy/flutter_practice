import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Dashboard")),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.orange,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.yellow,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.grey,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.yellowAccent,
            )
          ],
        ),
      ),
    );
  }
}
