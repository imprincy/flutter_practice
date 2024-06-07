import 'package:flutter/material.dart';

class Ripel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RipelState();
  }
}

class RipelState extends State<Ripel> with SingleTickerProviderStateMixin {
  late Animation _animation;
  late AnimationController _animationController;

  var listRadius=[150.0,200.0,250.0,300.0,350.0];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);

    _animation.addListener(() {

      setState(() {

      });

    });
    _animationController.forward();
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Rippel Effect"),
        elevation: 9,
      ),
      body: Center(
        child: Stack(
          children: listRadius.map((Radius) => Stack(
            children: [
              Container(
                width: Radius*_animation.value,
                height:Radius*_animation.value,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                    color: Colors.blue.withOpacity(1.0 - _animation.value),
                ),
              )
            ],
          )).toList(),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
