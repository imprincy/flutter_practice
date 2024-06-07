import 'dart:math';

import 'package:flutter/material.dart';

class ContainerAnimation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContainerAnimationState();
  }
}

class ContainerAnimationState extends State<ContainerAnimation> {
  var _width=200.0;
  var _height=100.0;
  bool flag=true;
  var bgcolor=Colors.indigo;

  Decoration myDecor=BoxDecoration(
    borderRadius: BorderRadius.circular(2),
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        title: Text("Foo Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(duration: Duration(seconds: 2),width:_width,
                color: bgcolor,
                height: _height,),ElevatedButton(onPressed: (){

                  setState(() {
                    if(flag) {
                      _width = 100;
                      _height = 200;
                      flag=false;
                      bgcolor=Colors.pink;
                      myDecor=BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                      );
                    }else{
                      _height=100;
                      _width=200;
                      flag=true;
                      bgcolor=Colors.blueGrey;
                      myDecor=BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                      );
                    }
                  });

            }, child: Text("Animate"))
          ],
        ),
      ),
    );
  }
}
