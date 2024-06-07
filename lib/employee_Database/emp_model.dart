import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_test/employee_Database/emp_db_helper.dart';

class ModelEmployee extends ChangeNotifier {
  List<dynamic> employee = [];

  // void empApi() async {
  //   String response = await rootBundle.loadString('assets/employee.json');
  //   employee = json.decode(response);
  //   notifyListeners();
  // }

  void addDataToDb() async {
    String response = await rootBundle.loadString('assets/employee.json');
    List<dynamic> employeeItems = json.decode(response);

    EmpDbHelper empDbHelper = EmpDbHelper();

    List<Map> dbItems = await empDbHelper.getData();

    if (dbItems.isEmpty) {
      employeeItems.forEach((element) {
        empDbHelper.addData(
            name: element['emp_name'],
            id: element['emp_id'],
            joining: element['emp_joining_date'],
            designation: element['employee_designation'],
            age: element['emp_age']);
      });
      List<Map> empItems = await empDbHelper.getData();
      employee.addAll(empItems);
    } else {
      employee.addAll(dbItems);
    }

    notifyListeners();

    // List<Map> employees = await empDbHelper.getData();
    // employees.forEach((element) {
    //   print(element);
    // });

    // empDbHelper.addData(
    //     name: name,
    //     id: id,
    //     joining: joining,
    //     designation: designation,
    //     age: age);
  }

  void checkDataInDb() async {
    EmpDbHelper empDbHelper = EmpDbHelper();

    List<Map> items = await empDbHelper.getData();

    if (items.isNotEmpty) {}
  }
}
