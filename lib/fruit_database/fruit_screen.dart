import 'package:flutter/material.dart';
import 'package:my_test/fruit_database/fruit_view_model.dart';
import 'package:provider/provider.dart';

class FruitScreen extends StatelessWidget {
  const FruitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return FruitModel();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Fruits Record"),
          elevation: 8,
        ),
        body: Consumer<FruitModel>(
            builder: (BuildContext context, FruitModel value, Widget? child) {
          if (value.fruits.isEmpty) {
            value.addFruitDataFromDatabase();
          }
          return ListView.builder(
            itemCount: value.fruits.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name:-${value.fruits[index]['fruit_name']}"),
                      Text("Color:-${value.fruits[index]['fruit_color']}"),
                      Text("Season:-${value.fruits[index]['fruit_season']}"),
                      Text("Shape:-${value.fruits[index]['fruit_shape']}"),
                    ],
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
