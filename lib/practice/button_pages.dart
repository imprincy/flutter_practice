import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Hello Home",style: TextStyle(fontSize: 29,color: Colors.black)),
    );
  }
} class Chat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "Hello chat",style: TextStyle(fontSize: 29,color: Colors.black)
      ),
    );
  }
}
class Live extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
          "Hello Live",style: TextStyle(fontSize: 29,color: Colors.black)
      ),
    );
  }
}class Call extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
          "Hello Call",style: TextStyle(fontSize: 29,color: Colors.black),
      ),
    );
  }
}
class Love extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
          "Hello Love",style: TextStyle(fontSize: 29,color: Colors.black)
      ),
    );
  }
}