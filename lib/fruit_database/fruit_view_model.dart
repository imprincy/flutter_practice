import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_test/fruit_database/fruit_db_helper.dart';

class FruitModel extends ChangeNotifier {
  List<dynamic> fruits = [];

  // void fruitApi() async {
  //   String fruitResponse = await rootBundle.loadString('assets/fruit.json');
  //   fruits = json.decode(fruitResponse);
  //   notifyListeners();
  // }

  void addFruitDataFromDatabase() async {
    String fruitResponse = await rootBundle.loadString('assets/fruit.json');
    List<dynamic> fruitsJson = json.decode(fruitResponse);
    FruitDbHelper fruitDbHelper = FruitDbHelper();

    List<Map> fruitsItems = await fruitDbHelper.readData();

    if (fruitsItems.isEmpty) {
      //todo add fruits in Db
      fruitsJson.forEach((element) {
        fruitDbHelper.addData(
            fruit_name: element['fruit_name'],
            fruit_color: element['fruit_color'],
            fruit_season: element['fruit_season'],
            fruit_shape: element['fruit_shape']);
      });

      List<Map> item = await fruitDbHelper.readData();
      fruits.addAll(item);
    } else {
      //todo set data from fruitsItem to fruits
      fruits.addAll(fruitsItems);
    }



    notifyListeners();
  }
}
