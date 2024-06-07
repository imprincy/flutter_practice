import 'dart:async';

import 'package:sqflite/sqflite.dart';

class DbLearner {
  Future<Database> openDb() async {
    var db = await openDatabase('infoManagementSystem.db',
        version: 1, onCreate: onCreate, onConfigure: onConfigure);
    return db;
  }

  FutureOr<void> onConfigure(Database db) {}

  FutureOr<void> onCreate(Database db, int version) async {
    await db.execute("""Create table students(name text,mobile text)""");

  }

  Future<List<Map>> readData() async {
    var db = await openDb();
    List<Map> list = await db.rawQuery("""Select * from students""");
    return list;
  }

  void addDataForStudent(String name, String mobile) async {
    var db = await openDb();
    int value = await db.rawInsert(
        """Insert into students(name,mobile) Values(?,?)""", [name, mobile]);
    print('db insert completed $value');
  }

}
