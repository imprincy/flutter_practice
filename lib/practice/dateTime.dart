import 'package:flutter/material.dart';

class Samay extends StatefulWidget {
  const Samay({Key? key}) : super(key: key);

  @override
  State<Samay> createState() => _SamayState();
}

class _SamayState extends State<Samay> {
  @override
  Widget build(BuildContext context) {
    var Time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Date and Time",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Current Time $Time",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("Current Time")),
            ],
          ),
        ),
      ),
    );
  }
}
