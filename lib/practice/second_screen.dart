import 'package:flutter/material.dart';
class SecondScreenArg{

  String name;

  SecondScreenArg({required this.name});
}

class SecondScreen extends StatelessWidget {

  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var arg=ModalRoute.of(context)!.settings.arguments as SecondScreenArg;
    return Scaffold(
      appBar: AppBar(
      title: Text("Second Screen"),
    ),body: Text(arg.name,style: TextStyle(fontFamily: 'FirstFont',fontSize: 18),),
    );
  }
}
