import 'package:flutter/material.dart';
import 'package:my_test/vegeis_database/veg_view_model.dart';
import 'package:provider/provider.dart';

class VegetableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return VeggieViewModel();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Vegatable record List"),
          elevation: 10,
        ),
        body: Consumer<VeggieViewModel>(
          builder:
              (BuildContext context, VeggieViewModel value, Widget? child) {
            if (value.veggie.isEmpty) {
              value.addVeggieDataFromDatabase();
            }
            return ListView.builder(
              shrinkWrap: true,
              itemCount: value.veggie.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.indigo.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("VegName:-${value.veggie[index]["veg_name"]}"),
                            Text(
                                "VegColor:-${value.veggie[index]["veg_color"]}"),
                            Text(
                                "VegShape:-${value.veggie[index]["veg_shape"]}"),
                            Text(
                                "NationalMonth:-${value.veggie[index]["veg_national_month"]}"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text("Delete"),
                                        content:
                                            Text("Are you sure to delete?"),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                value.deleteRecord(value
                                                    .veggie[index]["veg_name"]);
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
                                child: Text("Delete")),
                            ElevatedButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return updateModelSheet(
                                          veg_color: value.veggie[index]
                                              ['veg_color'],
                                          veg_name: value.veggie[index]
                                              ['veg_name'],
                                          veg_national_month:
                                              value.veggie[index]
                                                  ['veg_national_month'],
                                          veg_shape: value.veggie[index]
                                              ['veg_shape']);
                                    },
                                  );
                                },
                                child: Text("Update"))
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

updateModelSheet(
    {required String veg_name,
    required String veg_color,
    required veg_shape,
    required veg_national_month}) {
  TextEditingController nameController = TextEditingController();
  TextEditingController colorController = TextEditingController();
  TextEditingController shapeController = TextEditingController();
  TextEditingController nationalMonthController = TextEditingController();

  nameController.text = veg_name;
  colorController.text = veg_color;
  shapeController.text = veg_shape;
  nationalMonthController.text = veg_national_month;
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(labelText: "Enter Name"),
          ),
          TextField(
            controller: colorController,
            decoration: InputDecoration(labelText: "Enter Color"),
          ),
          TextField(
            controller: shapeController,
            decoration: InputDecoration(labelText: "Enter Shape"),
          ),
          TextField(
            controller: nationalMonthController,
            decoration: InputDecoration(labelText: "Enter National Month"),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Enter here to update"))
        ],
      ),
    ),
  );
}
