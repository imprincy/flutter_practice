import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_test/music_database/song_db_helper.dart';

class SongViewModel extends ChangeNotifier {
  List<dynamic> song = [];

  void addSongData() async {
    song.clear();
    String Songs = await rootBundle.loadString('assets/song.json');
    List<dynamic> songResponse = json.decode(Songs);

    SongDbHelper songDbHelper = SongDbHelper();

    List<dynamic> songItems = await songDbHelper.getData();

    if (songItems.isEmpty) {
      songResponse.forEach((element) {
        songDbHelper.addSongData(
            name: element['song_name'],
            singer: element["singer_name"],
            movie: element["movie_name"],
            composer: element["composed_by"]);
      });
    } else {
      song.addAll(songItems);
    }
    notifyListeners();
  }

  void deleteDataFromApi(String name) {
    SongDbHelper songDbHelper = SongDbHelper();
    songDbHelper.deleteData('song', where: 'name=?', whereArgs: [name]);
    addSongData();
  }
}
