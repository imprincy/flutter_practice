import 'package:flutter/material.dart';

class Stating extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Stater();
  }
}

class Stater extends State {
  var no1controller = TextEditingController();
  var no2controller = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Updating Stateful Widget",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: no1controller,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: no2controller,
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1controller.text.toString());
                          var no2 = int.parse(no2controller.text.toString());

                          var sum = no1 + no2;

                          result = "The sum of $no1 and $no2 is $sum";
                          setState(() {});
                        },
                        child: Text("Add"),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1controller.text.toString());
                            var no2 = int.parse(no2controller.text.toString());

                            var diff = no1 - no2;

                            result =
                                "The difference between $no1 and $no2 is $diff";

                            setState(() {});
                          },
                          child: Text("Sub")),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1controller.text.toString());
                            var no2 = int.parse(no2controller.text.toString());

                            var product = no1 * no2;

                            setState(() {
                              result = "The Product of $no1 and $no2 is $product";
                            });


                          },
                          child: Text("Multi")),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1controller.text.toString());
                            var no2 = int.parse(no2controller.text.toString());

                            var division = no1 / no2;

                            setState(() {
                              result =
                              "The division of no1 and $no2 is $division";
                            });


                          },
                          child: Text("Division")),
                    ],
                  )
              ),
              Text(result)
            ],
          ),
        ),
      ),
    );
  }
}
