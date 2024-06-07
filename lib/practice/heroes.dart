import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        backgroundColor: Colors.indigo.shade200,
        title: Text('SecondPage'),
      ),body: Container(
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, 'hero');
        },
        child: Hero(
          tag: 'background',
          child: Image.asset('assets/images/bg.jpeg'),
        ),
      ),
    ),
    );
  }
}
