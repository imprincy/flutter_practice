import 'dart:async';

import 'package:sqflite/sqflite.dart';

class CarDbHelper {
  Future<Database> openDb() async {
    var db = openDatabase(
      "carsManagementSystem.db",
      version: 1,
      onConfigure: onConfigure,
      onCreate: onCreate,
    );
    return db;
  }

  FutureOr<void> onConfigure(Database db) {}

  FutureOr<void> onCreate(Database db, int version) {
    db.execute(
        """Create table car(id integer Primary key AutoIncrement,car_name text,car_color text,car_model text,car_price text)""");
  }

  Future<int> addData(
      {required String car_name,
      required String car_color,
      required String car_model,
      required String car_price}) async {
    Database db = await openDb();
    var value = db.rawInsert(
        """Insert into car(car_name,car_color,car_model,car_price) Values(?,?,?,?)""",
        [car_name, car_color, car_model, car_price]);
    return value;
  }

  Future<List<Map>> readData() async {
    Database db = await openDb();
    List<Map> items = await db.rawQuery("""Select * from car""");
    return items;
  }

  Future<int>deleteData(String tableName,
      {String? where, List<dynamic>? whereArgs})async{
    Database db=await openDb();
    int recordDelete=await db.delete(tableName,where: where,whereArgs: whereArgs);
    return recordDelete;
  }
}
