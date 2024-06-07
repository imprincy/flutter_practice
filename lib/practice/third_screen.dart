import 'package:flutter/material.dart';

class ThirdScreenArg{

  String? data;

  ThirdScreenArg(this.data);
}


class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var arg = ModalRoute.of(context)!.settings.arguments as ThirdScreenArg;


    return Scaffold(body: Text(arg.data!));
  }
}
