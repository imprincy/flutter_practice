import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_test/database/db_helper.dart';

class Tabling extends StatefulWidget {
  const Tabling({super.key});

  @override
  State<Tabling> createState() => _TablingState();
}

class _TablingState extends State<Tabling> {
  var controller1=TextEditingController();
  @override
  Widget build(BuildContext context) {

    DbHelper dbHelper = DbHelper();
    dbHelper.addData(3, "Sharma");

    // dbHelper.getData("asdcsdc");

    return Scaffold(
      appBar: AppBar(
        elevation: 7,
        title: Text("My Table view"),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller1,
            decoration: InputDecoration(
              labelText: "Name"
            ),
          ),ElevatedButton(onPressed: (){
            print(controller1.text);
          }, child: Text("Submit"))


          // Center(
          //   child: Container(
          //     margin: EdgeInsets.all(8),
          //     child: Table(
          //       border: TableBorder.all(),
          //       children: [
          //         TableRow(children: [
          //           Text(
          //             "First Name",
          //             textAlign: TextAlign.center,
          //             style: TextStyle(
          //                 fontSize: 28,
          //                 fontWeight: FontWeight.bold,
          //                 fontFamily: "FirstFont"),
          //           ),
          //           Text(
          //             "Last Name",
          //             textAlign: TextAlign.center,
          //             style: TextStyle(
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 28,
          //                 fontFamily: "FirstFont"),
          //           )
          //         ]),
          //         TableRow(children: [
          //           Text(
          //             "Princy",
          //             style: TextStyle(
          //                 fontSize: 20, fontFamily: "FirstFont", color: Colors.black),
          //             textAlign: TextAlign.center,
          //           ),
          //           Text(
          //             "Sharma",
          //             style: TextStyle(
          //                 fontSize: 20, fontFamily: "FirstFont", color: Colors.black),
          //             textAlign: TextAlign.center,
          //           ),
          //         ]),
          //         TableRow(children: [
          //           Text(
          //             "Shivam",
          //             textAlign: TextAlign.center,
          //             style: TextStyle(
          //                 fontFamily: 'FirstFont', color: Colors.black, fontSize: 20),
          //           ),
          //           Text(
          //             "Sharma",
          //             textAlign: TextAlign.center,
          //             style: TextStyle(
          //                 fontFamily: 'FirstFont', color: Colors.black, fontSize: 20),
          //           ),
          //         ]),
          //         TableRow(children: [
          //           Icon(
          //             Icons.account_circle,
          //             color: Colors.black,
          //             size: 22,
          //           ),
          //           Icon(
          //             Icons.boy,
          //             color: Colors.black,
          //             size: 22,
          //           ),
          //         ]),
          //         TableRow(children: [
          //           ListTile(
          //             leading: CircleAvatar(
          //               radius: 14,
          //               backgroundColor: Colors.yellow,
          //             ),
          //             trailing: Icon(Icons.call),
          //             title: Text(
          //               "Naman",
          //               textAlign: TextAlign.center,
          //               style: TextStyle(fontSize: 16, fontFamily: 'FirstFont'),
          //             ),
          //             subtitle: Text(
          //               "Sharma",
          //               textAlign: TextAlign.center,
          //               style: TextStyle(fontFamily: 'FirstFont', fontSize: 14),
          //             ),
          //           ),
          //           ListTile(
          //             leading: CircleAvatar(
          //               backgroundColor: Colors.cyan,
          //               radius: 14,
          //             ),
          //             trailing: Icon(Icons.call),
          //             title: Text(
          //               "Satyam",
          //               textAlign: TextAlign.center,
          //               style: TextStyle(
          //                 fontSize: 16,
          //                 fontFamily: 'FirstFont',
          //               ),
          //             ),
          //             subtitle: Text(
          //               "Sharma",
          //               textAlign: TextAlign.center,
          //               style: TextStyle(fontSize: 14, fontFamily: 'FirstFont'),
          //             ),
          //           )
          //         ]),
          //         TableRow(children: [
          //           InkWell(
          //               onTap: () {
          //                 print("This is the holiday time");
          //               },
          //               child: Icon(
          //                 Icons.holiday_village_rounded,
          //                 size: 22,
          //                 color: Colors.pink,
          //               )),
          //           InkWell(
          //             onTap: (){
          //               print("Hello Table");
          //             },
          //               child: Icon(
          //             Icons.pan_tool,
          //             color: Colors.redAccent,
          //             size: 22,
          //           )),
          //         ]),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
