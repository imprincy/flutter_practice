import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_test/car_database/car_db_helper.dart';

class CarViewModel extends ChangeNotifier {
  List<dynamic> cars = [];

  void addCarDataFromDatabase() async {
    cars.clear();
    String carResponse = await rootBundle.loadString('assets/car.json');
   List<dynamic>vehicle = json.decode(carResponse);

    CarDbHelper carDbHelper = CarDbHelper();

    List<dynamic>carItem=await carDbHelper.readData();

    if(carItem.isEmpty){
      vehicle.forEach((element) {
        carDbHelper.addData(
            car_name: element['car_name'],
            car_color: element['car_color'],
            car_model: element['car_model'],
            car_price: element['car_price']);
      });
    }else{
      cars.addAll(carItem);
    }
    notifyListeners();
  }

  void deleteDataFromDb(String carName){
    CarDbHelper carDbHelper=CarDbHelper();
    carDbHelper.deleteData('car',where:'car_name=?',whereArgs: [carName]);
    addCarDataFromDatabase();
  }
}
