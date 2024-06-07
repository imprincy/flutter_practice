import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{
  final String btnName;
  final IconData btnIcon;


  RoundedButton(
      this.btnName, this.btnIcon); // RoundedButton(this.btnIcon,this.btnName)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learing custom widget",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.cyanAccent,
      ),body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
        child: Container(
          height: 200,
          width: MediaQuery.sizeOf(context).width*0.8,
          child: Row(
            children: [
              Text(btnName),
              Icon(btnIcon),
            ],
          ),
        ),
        onPressed: (){
          print("Name is Clicked");
        }
        ,
    ),
      ),
    );
  }
}