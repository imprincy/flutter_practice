import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StoringData extends StatefulWidget {
  const StoringData({super.key});

  @override
  State<StoringData> createState() => _StoringDataState();
}

class _StoringDataState extends State<StoringData> {
  TextEditingController nameController = TextEditingController();

  static const String KEYNAME ='name';

  var nameValue ="no value saved";

  @override
  void initState() {

    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Store Data through SharedPreference"),
        elevation: 8,
      ),
      body: Padding(
        padding: const EdgeInsets.all(38.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Enter Name here",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade100),
                onPressed: () async {
                  var prefs = await SharedPreferences.getInstance();
                  prefs.setString(KEYNAME, nameController.text);
                },
                child: Text("Click here to save")),
            SizedBox(
              height: 20,
            ),
            Text(nameValue)
          ],
        ),
      ),
    );
  }

  void getValue() async{
    var prefs=await SharedPreferences.getInstance();

    var getName=prefs.getString(KEYNAME);

    nameValue = getName !=null ? getName:"no value saved";

    setState(() {

    });
  }
}
