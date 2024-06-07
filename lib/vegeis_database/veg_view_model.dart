import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_test/vegeis_database/veg_db_helper.dart';

class VeggieViewModel extends ChangeNotifier {
  List<dynamic> veggie = [];

  void addVeggieDataFromDatabase() async {
    veggie.clear();
    String response = await rootBundle.loadString('assets/veg.json');
    List<dynamic> veggieItem = json.decode(response);

    VegDbHelper vegDbHelper = VegDbHelper();

    List<dynamic> veggies = await vegDbHelper.readData();
    if (veggies.isEmpty) {
      veggieItem.forEach((element) {
        vegDbHelper.addData(
            veg_name: element['veg_name'],
            veg_color: element['veg_color'],
            veg_shape: element['veg_shape'],
            veg_national_month: element['veg_national_month']);
      });
    } else {
      veggie.addAll(veggies);
    }
    notifyListeners();
  }

  void deleteRecord(String vegName) {
    VegDbHelper vegDbHelper = VegDbHelper();
    vegDbHelper
        .deleteData('vegetable', where: 'veg_name=?', whereArgs: [vegName]);
    addVeggieDataFromDatabase();
  }
}
