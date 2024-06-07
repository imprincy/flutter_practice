import 'dart:async';

import 'package:sqflite/sqflite.dart';

class SongDbHelper {
  Future<Database> openDb() async {
    var db = await openDatabase("songManagementSystem.db",
        version: 1, onCreate: onCreate, onConfigure: onConfigure);
    return db;
  }

  FutureOr<void> onConfigure(Database db) {}

  FutureOr<void> onCreate(Database db, int version) {
    db.execute(
        """Create table song(name text,singer text, movie text, composer text)""");
  }

  Future<int> addSongData(
      {required String name,
      required String singer,
      required String movie,
      required String composer}) async {
    Database db = await openDb();
    int value = await db.rawInsert(
        """Insert into song(name,singer,movie,composer)Values(?,?,?,?)""",
        [name, singer, movie, composer]);
    return value;
  }

  Future<List<Map>> getData() async {
    Database db = await openDb();
    List<Map> dataValue = await db.rawQuery("""Select * from song""");
    return dataValue;
  }

  Future<int> deleteData(String tableName,
      {String? where, List<dynamic>? whereArgs}) async{
    Database db = await openDb();
    int record = await db.delete(tableName,where: where,whereArgs: whereArgs);
    return record;
  }
}
