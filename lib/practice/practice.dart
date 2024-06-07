import 'package:flutter/material.dart';

class ListPractice extends StatelessWidget {
  const ListPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arrNames = [
      "Lali",
      "Ritu Dee",
      "Babu",
      "Mr.Developer",
      "My Mum",
      "Ajio",
      "Flipkart",
      "Mom G",
      "Babli Mausi"
    ];
    var arrReply = [
      "You reacted to Thanks",
      "You reacted to Thanks",
      "Hmm Babu",
      "Reacted to Radhey Radhey",
      "Namaste",
      "Ishq Sava",
      "Best Service",
      "Best Service",
      "Nice"
    ];
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              children: [
                Text(
                  "WhatsApp",
                ),
                SizedBox(
                  width: 130,
                ),
                Icon(Icons.photo_camera),
                SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.search),
                Icon(Icons.more_vert),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.people_alt),
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Chats",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Updates",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  width: 60,
                ),
                Text(
                  "Calls",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemExtent: 100,
        itemCount: arrReply.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(arrNames[index]),
            leading: CircleAvatar(
                backgroundColor: Colors.pink,
                backgroundImage: AssetImage("assets/images/pexels.jpg"),
                radius: 50,
                child: Text("${index + 1}")),
            subtitle: Text(arrReply[index]),
            trailing: Text("Yesterday"),
          );
        },
      ),
    );
  }
}
