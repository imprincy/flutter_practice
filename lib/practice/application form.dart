import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class ApplicationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Form",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 28,
            ),
            const Text(
              "COLLEGE APPLICATION FORM",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black45,
                  fontFamily: "Inconsolata_UltraExpanded"),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                child: Text(
                  "Name",
                  style: TextStyle(fontSize: 16),
                ),
                alignment: Alignment.topLeft,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(2),
                            )),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "First Name",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(2),
                            )),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "Last Name",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Gender",
                        style: TextStyle(fontSize: 16),
                      ),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(2),
                            )),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: "Please Select"),
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down_rounded)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Date of birth',
                          style: TextStyle(fontSize: 16)),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(2),
                            )),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                    decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: "DD-MM-YYYY",
                                  labelStyle: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                )),
                              ),
                              Icon(
                                Icons.date_range,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Phone Number"),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.all(
                              Radius.circular(2),
                            )),
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration:
                              InputDecoration(labelText: "0000-00-0000"),
                        ),
                      ),
                      Text(
                        "Please enter a valid phone number",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email"),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.all(
                              Radius.circular(2),
                            )),
                        child: TextField(),
                      ),
                      Text(
                        "example @example.com",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
