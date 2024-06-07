import 'package:flutter/material.dart';
import 'package:my_test/database/db_learner.dart';
import 'package:my_test/database/db_practice.dart';

class ShowUserScreen extends StatefulWidget {
  const ShowUserScreen({super.key});

  @override
  State<ShowUserScreen> createState() => _ShowUserScreenState();
}

class _ShowUserScreenState extends State<ShowUserScreen> {
  List<Map> allUser = [];
  late DbLearner learner;

  @override
  void initState() {
    super.initState();
    learner = DbLearner();
    loadAllUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show All Users"),
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: allUser.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('${allUser[index]['name']} --> ${allUser[index]['mobile']}',
                    style: TextStyle(fontSize: 32)),
              );
            },
          )
        ],
      ),
    );
  }

  void loadAllUser() async {
    List<Map> items = await learner.readData();

    setState(() {
      allUser.addAll(items);
    });
  }
}
