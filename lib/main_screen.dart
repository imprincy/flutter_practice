import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'yourBMI');
                  }, child: Text("BMI Screen")),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'drag');
                  }, child: Text("Draggable")),
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'fooAnimation');
                  }, child: Text("Foo Animation")),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'opaque');
                  }, child: Text("Opaque"))
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'hero');
                  }, child: Text("Hero Screen")),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'heroes');
                  }, child: Text("Heroes Screen"))
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'fadeCurve');
                  }, child: Text("Fade Curve")),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'scroll');
                  }, child: Text("Scroll"))
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'clip');
                  }, child: Text("Clip")),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'mapping');
                  }, child: Text("Mapping"))
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'twin');
                  }, child: Text("Twin Screen")),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'ripel');
                  }, child: Text("Ripel Screen"))
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'prefer');
                  }, child: Text("prefer")),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'splash');
                  }, child: Text("Splash Screen"))
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'bottom');
                  }, child: Text("Bottom Screen")),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'bottomMenu');
                  }, child: Text("Bottom Menu Screen"))
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'learn');
                  }, child: Text("Learn")),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'preference');
                  }, child: Text("Preference"))
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'employeeScreen');
                  }, child: Text("Employee Screen")),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'fruitScreen');
                  }, child: Text("Fruit Screen"))
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'carScreen');
                  }, child: Text("car Screen")),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'vegScreen');
                  }, child: Text("Veg Screen"))
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'songScreen');
                  }, child: Text("Song screen")),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, 'scrollWidget');
                  }, child: Text("Scroll Widget Screen"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
