import 'package:flutter/material.dart';

class JobApply extends StatelessWidget {
  const JobApply({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            "FORM",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.white70,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Private School Application form",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Parent/Guardian Name:",
                      style: TextStyle(fontSize: 12),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(2),
                              )),
                          child: const TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                border: InputBorder.none,
                                labelText: "First"),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(2),
                              )),
                          child: const TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                border: InputBorder.none,
                                labelText: "Last"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                        "How old will be your child when they start out the school year:",
                        style: TextStyle(fontSize: 12)),
                    const SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(2),
                          )),
                      child: const TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          border: InputBorder.none,
                          labelText: (""),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "Child Name:",
                      style: TextStyle(fontSize: 12),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(2),
                              )),
                          child: const TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                border: InputBorder.none,
                                labelText: "First"),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(2),
                              )),
                          child: const TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                border: InputBorder.none,
                                labelText: "Last"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text("The School he comes from:"),
                    const SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(2),
                        ),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          border: InputBorder.none,
                          labelText: "",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text("Home Address:"),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(2),
                          )),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "Street Address",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(2),
                          )),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "Street Address Line 2",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(2),
                              )),
                          child: const TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                border: InputBorder.none,
                                labelText: "City"),
                          ),
                        ),
                        Container(
                            height: 30,
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(2),
                                )),
                            child: const TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(8),
                                  border: InputBorder.none,
                                  labelText: "Region"),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(2),
                              )),
                          child: const TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                border: InputBorder.none,
                                labelText: "Postal/Zip code"),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(2),
                              )),
                          child: const Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(8),
                                      border: InputBorder.none,
                                      labelText: "Romannia"),
                                ),
                              ),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text("Phone Number:"),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(2),
                          )),
                      child: const TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              hintText: "##########",
                              border: InputBorder.none)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
