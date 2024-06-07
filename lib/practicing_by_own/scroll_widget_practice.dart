import 'package:flutter/material.dart';

class ScrollWidget extends StatelessWidget {
  final studentName = [
    "Aman",
    "Binith",
    "Arun",
    "Ashu",
    "Anjali",
    "Arya",
    "Babita",
    "Babli",
    "Chayna",
    "Sarita",
    "Shilpi",
    "Suhan",
    "Naman",
    "Shraddha",
    "Sonu",
    "Rajat",
    "Vikram",
    "Pooja",
    "Poonam",
    "Kirti"
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Scroll Widgets Layout"),
          elevation: 7,
        ),
        body: Scrollbar(
          thickness: 8,
          radius: Radius.circular(10),
          trackVisibility: false,
          interactive: true,
          thumbVisibility: true,
          child: ListView.builder(
            itemCount: studentName.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text(studentName[index]),
                    trailing: Icon(Icons.call),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
