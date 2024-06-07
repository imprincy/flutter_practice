import 'package:flutter/material.dart';
import 'package:my_test/practice/second_screen.dart';
import 'package:my_test/practice/third_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var controller1=TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to your Screen",
              style: TextStyle(
                  fontFamily: 'FirstFont',
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),TextField(
              controller: controller1,
            ),ElevatedButton(onPressed: (){

              Navigator.pushNamed(context, 'thirdScreen', arguments: ThirdScreenArg("bsjdcbs sdcjknsd jcnjsdk"));
              // Navigator.pushNamed(context, 'secondScreen', arguments: SecondScreenArg(name: controller1.text));
            },

                child: Text('Open Next Screen'))
          ],
        ),
      ),
    );
  }
}
