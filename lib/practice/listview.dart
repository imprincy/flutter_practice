import 'package:flutter/material.dart';

class German extends StatelessWidget {
  German({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arrNames = [
      "Princy",
      "Noida",
      "Bangalore",
      "Ludhiana",
      "Punjab",
      "Chanduak",
      "Bulandshahr",
      "Khandeha",
    ];
    return Scaffold(
        appBar: AppBar(
          title: InkWell(
              onTap: () {
                print("ListView is tapped once");
              },
              child: Text("ListView Learning")),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text("${index + 1}"),
              title: Card(
                  elevation: 5,
                  shadowColor: Colors.pink,
                  child: Text(arrNames[index])),
              subtitle: Text("Number"),
              trailing: Icon(Icons.add),
            );
          },
          itemCount: arrNames.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 40,
              thickness: 10,
            );
          },
        ));
  }
}
