import 'package:flutter/material.dart';

class KingFisher extends StatelessWidget {
  const KingFisher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 9,
        backgroundColor: Colors.green.shade300,
        title: Row(
          children: [
            Icon(Icons.menu,color: Colors.white,),
            SizedBox(width: 40,),
            Text("Flutter Drawer Demo",style: TextStyle(color: Colors.white,fontFamily: 'FontFirst'),),
          ],
        ),

      ),
    );
  }
}
