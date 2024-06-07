import 'dart:async';

import 'package:flutter/material.dart';

class FadedAnimation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FadedAnimationState();
  }
} class FadedAnimationState extends State<FadedAnimation>{
  bool isFirst=true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState(
    );

    Timer(Duration(seconds: 2),(){
      reload();
    });
  }
  void reload(){
    setState(() {
      isFirst=false;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Foo Animation",style: TextStyle(fontSize: 22),
        ),
      ),body: AnimatedCrossFade(
      duration: Duration(seconds:2),
      firstChild: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.grey.shade300,
            ),
          ],
        ),
      ),secondChild: Image.asset('assets/images/pexels.jpg',height: 200,width: 200,),
      crossFadeState: isFirst? CrossFadeState.showFirst:CrossFadeState.showSecond,
    ),
    );
  }

}