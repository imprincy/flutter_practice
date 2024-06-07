import 'package:flutter/material.dart';

class WheelScroll extends StatefulWidget {
  const WheelScroll({super.key});

  @override
  State<WheelScroll> createState() => _WheelScrollState();
}

class _WheelScrollState extends State<WheelScroll> {
  var arrName=['Rita','Sita','Gita','Mita','Riya','Piya','Siya','Jiya','Riva','Giva'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 7,
        title: Text(
          "3DList"
        ),
      ),body: ListWheelScrollView(
      itemExtent: 200,
      children:
        arrName.map((value) => Container(
          width: double.infinity,
          color: Colors.deepPurple.shade100,
          child: Center(child: Text(value,style: TextStyle(fontSize: 33,color: Colors.black),)),
        )).toList()
      ,
    ),
    );
  }
}
