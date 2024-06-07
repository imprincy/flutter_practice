import 'package:flutter/material.dart';
import 'package:my_test/database/db_learner.dart';

class Learn extends StatefulWidget {
  Learn({super.key});

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  String data = "";
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    DbLearner dbLearner = DbLearner();
    return Scaffold(
      appBar: AppBar(
        title: Text("Learning DB"),
        elevation: 8,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

        Navigator.pushNamed(context, "showUserScreen");
      },child: Icon(Icons.next_plan_outlined)),
      body: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              labelText: "Name",
              labelStyle: TextStyle(fontSize: 20, fontFamily: 'FontFirst'),
            ),
          ),
          TextField(
            controller: mobileController,
            decoration: InputDecoration(
              labelText: "Mobile",
              labelStyle: TextStyle(fontFamily: 'FontFirst', fontSize: 20),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                dbLearner.addDataForStudent(
                    nameController.text, mobileController.text);
              },
              child: Text("Submit"))
        ],
      ),
    );
  }
}
