import 'package:flutter/material.dart';

class Back extends StatefulWidget {
  const Back({Key? key}) : super(key: key);

  @override
  State<Back> createState() => _BackState();
}

class _BackState extends State<Back> {
  callBack() {
    print("Clicked");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Function"),
      ),
      body: ElevatedButton(
        child: Text("Touch Me"),
        onPressed: callBack,
      ),
    );
  }
}
