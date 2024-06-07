import 'package:flutter/material.dart';
import 'package:my_test/music_database/song_view_model.dart';
import 'package:provider/provider.dart';

class SongScreen extends StatefulWidget {
  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController singerController = TextEditingController();
  TextEditingController movieController = TextEditingController();
  TextEditingController composerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return SongViewModel();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Song Screen"),
          elevation: 10,
        ),
        body: Consumer<SongViewModel>(
          builder: (BuildContext context, SongViewModel value, Widget? child) {
            if (value.song.isEmpty) {
              value.addSongData();
            }
            return ListView.builder(
                itemCount: value.song.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(value.song[index]['name']),
                          Text(value.song[index]['singer']),
                          Text(value.song[index]['movie']),
                          Text(value.song[index]['composer']),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey.shade300),
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text("Delete Message"),
                                          content: Text(
                                              "Are you sure to delete the record?"),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  value.deleteDataFromApi(value
                                                      .song[index]['name']);
                                                  Navigator.pop(context);
                                                },
                                                child: Text("Yes")),
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text("No"))
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: Text("Delete")),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey.shade300),
                                  onPressed: () {
                                    showModalBottomSheet(
                                      context: context,
                                      builder: (context) {
                                        return updateSheet(
                                            name: value.song[index]['name'],
                                            composer: value.song[index]
                                                ['composer'],
                                            movie: value.song[index]['movie'],
                                            singer: value.song[index]
                                                ['singer']);
                                      },
                                    );
                                  },
                                  child: Text("Update"))
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                });
          },
        ),
      ),
    );
  }

  Widget updateSheet(
      {required String name,
        required String singer,
        required String movie,
        required String composer}) {

    nameController.text = name;
    singerController.text = singer;
    movieController.text = movie;
    composerController.text = composer;

    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(labelText: "Enter name needs to update"),
          ),
          TextField(
            controller: singerController,
            decoration: InputDecoration(labelText: "Enter Singer name"),
          ),
          TextField(
            controller: movieController,
            decoration: InputDecoration(labelText: "Enter movie name"),
          ),
          TextField(
            controller: composerController,
            decoration: InputDecoration(labelText: "Enter composer name"),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Enter here to update"))
        ],
      ),
    );
  }
}
