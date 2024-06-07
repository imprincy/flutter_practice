import 'package:flutter/material.dart';

class AnimateOpacity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimateOpacityState();
  }
}

class AnimateOpacityState extends State<AnimateOpacity> {
  var myOpacity=1.0;
  var isVisible=true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity Concept'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: myOpacity,
              curve: Curves.bounceInOut,
              duration: Duration(seconds: 4),
              child: Container(
                height: 200,
                width: 100,
                color: Colors.cyan,
              ),
            ),ElevatedButton(onPressed: (){
             setState(() {
               if(isVisible){
                 myOpacity=0.0;
                 isVisible=false;
               }else{
                 myOpacity=1.0;
                 isVisible=true;
               }
             });
            }, child: Text("Close")),
          ],
        ),
      ),
    );
  }
}
