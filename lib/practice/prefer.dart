import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Prefer extends StatefulWidget {

   Prefer({super.key});

  @override
  State<Prefer> createState() => _PreferState();
}

class _PreferState extends State<Prefer> {
  var nameController=TextEditingController();

   static const String KEYNAME='name';

   var nameValue='no value saved';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        title: Text(
          "Shared Preference"
        ),
      ),body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 66,right: 66),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                label: Text("Name",style: TextStyle(fontSize: 15,color: Colors.black),),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
          ),Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () async{
              // var name=nameController.text.toString();

              var prefs=await SharedPreferences.getInstance();

              prefs.setString(KEYNAME,nameController.text.toString());

            }, child: Text('Save')),
          ),
          Text(nameValue,style: TextStyle(fontSize: 15,color: Colors.black,fontFamily: 'FontFirst'),),
        ],
      ),
    ),
    );
  }

  void getValue() async{
    var prefs= await SharedPreferences.getInstance();

    var getName=prefs.getString(KEYNAME);

    nameValue =getName ?? 'no value saved';
    setState(() {

    });

  }
}
