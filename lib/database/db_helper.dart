import 'dart:async';

import 'package:sqflite/sqflite.dart';

class DbHelper {
  Future<Database> openDb() async {
    var db = await openDatabase(
      'schoolManagementSystem.db',
      version: 1,
      onCreate: onCreate,
      onConfigure: onConfigure,
    );
    return db;
  }

  FutureOr<void> onConfigure(Database db) {}

  FutureOr<void> onCreate(Database db, int version) async {
    await db.execute("""
    CREATE TABLE students(id int primary key, name text)
     """);
  }

  void addData(int id, String name) async {
    var db = await openDb();
    int value = await db.rawInsert("""
   INSERT INTO students(id, name) VALUES(?,?)
   """, [id, name]);
    print("db insert completed:- $value");
  }

  void getData(String name) async{
    var db = await openDb();

    List<Map> list = await db.rawQuery("""Select * from students where name = ? """, [name]);

    print(list);

  }

}
