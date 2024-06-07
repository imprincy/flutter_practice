import 'dart:async';

import 'package:sqflite/sqflite.dart';

class FruitDbHelper {
  Future<Database> openDb() async {
    var db = openDatabase(
      "fruitManagementSystem.db",
      version: 1,
      onCreate: onCreate,
      onConfigure: onConfigure,
    );
    return db;
  }

  FutureOr<void> onConfigure(Database db) {}

  FutureOr<void> onCreate(Database db, int version) {
    db.execute(
        """Create table fruits(fruit_name text,fruit_color text,fruit_season text,fruit_shape text)""");
  }

  Future<int> addData(
      {required String fruit_name,
      required String fruit_color,
      required String fruit_season,
      required String fruit_shape}) async {
    Database db = await openDb();
    int value = await db.rawInsert("""
    Insert into fruits(fruit_name,fruit_color,fruit_season,fruit_shape) values(?,?,?,?)
    """, [fruit_name, fruit_color, fruit_season, fruit_shape]);
    return value;
  }

  Future<List<Map>> readData() async {
    Database db = await openDb();
    List<Map> items = await db.rawQuery("""Select * from fruits""");
    return items;
  }
}
