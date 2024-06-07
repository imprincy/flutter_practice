import 'dart:async';

import 'package:sqflite/sqflite.dart';

class DbPractice {
  Future<Database> openDb() async {
    var db = await openDatabase(
      'PracticeSystemManagemnet.db',
      version: 1,
      onCreate: onCreate,
      onConfigure: onConfigure,
    );
    return db;
  }

  FutureOr<void> onConfigure(Database db) {}

  FutureOr<void> onCreate(Database db, int version) async {
    await db.execute("""
    Create table practice(id int,name text)""");
  }

  void addData(int id, String name) async {
    var db = await openDb();
    int value = await db.rawInsert("""
    Insert into practice(id,name)values(?,?)""", [id, name]);
    print('Id-$id,name-$name');
  }

  Future<List<Map>> readData() async {
    var db = await openDb();
    List<Map> list = await db.rawQuery("""Select * from practice""");
    return list;
  }
}
