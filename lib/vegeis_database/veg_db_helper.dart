import 'dart:async';

import 'package:sqflite/sqflite.dart';

class VegDbHelper {
  Future<Database> openDb() async {
    var db = openDatabase(
      "vegManagementSystem.db",
      version: 1,
      onCreate: onCreate,
      onConfigure: onConfigure,
    );
    return db;
  }

  FutureOr<void> onConfigure(Database db) {}

  FutureOr<void> onCreate(Database db, int version) {
    db.execute(
        """Create table vegetable(veg_name text,veg_color text,veg_shape text,veg_national_month text)""");
  }

  Future<int> addData(
      {required veg_name,
      required veg_color,
      required veg_shape,
      required veg_national_month}) async {
    Database db = await openDb();
    int value = await db.rawInsert(
        """Insert into vegetable(veg_name,veg_color,veg_shape,veg_national_month) Values (?,?,?,?)""",
        [veg_name, veg_color, veg_shape, veg_national_month]);
    return value;
  }

  Future<List<Map>> readData() async {
    Database db = await openDb();
    List<Map> items = await db.rawQuery("""Select * from vegetable""");
    return items;
  }

  Future<int> deleteData(String tableName,
      { String? where, List<dynamic>? whereArgs}) async {
    Database db = await openDb();
    int record = await db.delete(tableName, where: where, whereArgs: whereArgs);
    return record;
  }
}
