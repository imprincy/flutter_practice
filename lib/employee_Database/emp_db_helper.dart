import 'dart:async';

import 'package:sqflite/sqflite.dart';

class EmpDbHelper {
  Future<Database> openDb() async {
    var db = await openDatabase('empSystemManagement.db',
        version: 1, onConfigure: onConfigure, onCreate: onCreate);
    return db;
  }

  FutureOr<void> onConfigure(Database db) {}

  FutureOr<void> onCreate(Database db, int version) {
    db.execute("""Create table employeesInformation(name text,emp_id text,joining text,designation text,age text)""");
  }

  Future<int> addData(
      {required String name,
      required String id,
      required String joining,
      required String designation,
      required String age}) async {
    Database db = await openDb();
    var value = db.rawInsert("""
        Insert into employeesInformation(name,emp_id,joining,designation,age )values(?,?,?,?,?)
        """, [name, id, joining, designation, age]);
    return value;
  }

  Future<List<Map>> getData() async {
    Database db = await openDb();
    Future<List<Map<String, Object?>>> items = db.rawQuery("""
    Select * from employeesInformation""");
    return items;
  }
}
