import 'package:flutter/material.dart';
import 'package:my_test/car_database/car_view_model.dart';
import 'package:provider/provider.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return CarViewModel();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Screen of the car list"),
          elevation: 10,
        ),
        body: Consumer<CarViewModel>(
          builder: (BuildContext context, value, Widget? child) {
            if (value.cars.isEmpty) {
              value.addCarDataFromDatabase();
            }
            return ListView.builder(
                itemCount: value.cars.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Name:-${value.cars[index]['car_name']}"),
                              Text("Color:-${value.cars[index]['car_color']}"),
                              Text("Model:-${value.cars[index]['car_model']}"),
                              Text("Price:-${value.cars[index]['car_price']}"),
                            ],
                          ),
                          ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Delete Message"),
                                      content: Text("Are you sure to delete?"),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              value.deleteDataFromDb(value
                                                  .cars[index]['car_name']);
                                              Navigator.pop(context);
                                            },
                                            child: Text("Yes")),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text("No"))
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Text("Delete"))
                        ],
                      ),
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
