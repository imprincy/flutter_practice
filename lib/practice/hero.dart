import 'package:flutter/material.dart';

class FirstHero  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        backgroundColor: Colors.indigo.shade300,
        title: Text("FirstPage"),
      ),body: Center(
        child: Container(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'heroes');
          },
          child: Hero(
            tag: 'background',
            child: Image.asset('assets/images/bg.jpeg',width: 400,height: 200,)
          ),
        ),
            ),
      ),
    );
  }
}