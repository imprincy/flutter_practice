import 'package:flutter/material.dart';

class TwinAnimation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TwinAnimationState();
  }
}
class TwinAnimationState extends State<TwinAnimation> with SingleTickerProviderStateMixin{
  late Animation animation;
  late AnimationController animationController;
  late Animation colorAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 10));
    animation=Tween(begin: 0.0, end: 100.0).animate(animationController);
    colorAnimation=ColorTween(begin: Colors.pink,end: Colors.cyan).animate(animationController);

    animationController.addListener(() {
      print(animation.value);
      setState(() {

      });
    });
    animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        title: Center(child: Text("Tween",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,),)),
      ),body: Center(
        child: Container(
        width: animation.value,
        height: animation.value,
        color: colorAnimation.value,
            ),
      ),
    );
  }

}