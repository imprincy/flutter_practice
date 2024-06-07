import 'package:flutter/material.dart';
import 'package:my_test/practice/add_more.dart';


class BottomState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 9,
        title: Text(
          "BottomSheet)",
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.pink.shade200,
          ),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return AddMore(colorData: ['1','2','3','4','5','6']);
                    });
              },
              child: Text("Add more Container"))
        ],
      ),
    );
  }
}
