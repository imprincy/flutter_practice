import 'package:flutter/material.dart';

class Split extends StatelessWidget {
  const Split({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arrNames = ["Pricny", "Shivam"];
    return Scaffold(
      appBar: AppBar(
        title: Text("Splitting widget"),
      ),
      body: Column(
        children: [
          CatItems(),
          SubCategory2(),
          SubItems(),
          SubItems2(),
        ],
      ),
    );
  }
}

class CatItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.yellow,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 50,
              child: CircleAvatar(
                backgroundColor: Colors.greenAccent,
                child: Card(
                  elevation: 6,
                  child: Text("Princy"),
                ),
              ),
            ),
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}

class SubItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      flex: 3,
      child: Container(
          color: Colors.pink,
          child: ListView.builder(
            itemBuilder: (context, index) => ListTile(
              iconColor: Colors.blue,
              leading: (CircleAvatar()),
              trailing: Icon(Icons.delete),
              title: Text("Name"),
              subtitle: Text("Mob"),
            ),
          )),
    );
  }
}

class SubCategory2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.green,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.orange),
            ),
          ),
        ),
      ),
    );
  }
}

class SubItems2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      flex: 2,
      child: Container(
          color: Colors.blueAccent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                        "My name is Princy Sharma, i am 25years old,got married in feb,now reside in bangalore,but i love "
                        "my Noida and miss my family allot.My native place is Bulandshahr,where i used to go when i was "
                        "a child.My grandparents live there,my grandpa passes away in 2020 due to brain Haemorrhage and corone"
                        ",and now my grandma is alone who reside "
                        "there.My Husband name is Shivam Sharma,he is a very good personality,by profession he is an app developer."
                        "He love me very much but dont know how to express his feelings to wife although he also dont aware with the"
                        "things which girls use to love."),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
