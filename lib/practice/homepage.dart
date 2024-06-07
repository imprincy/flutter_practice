import 'package:flutter/material.dart';
import 'package:my_test/practice/splash_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade50,
        elevation: 8,
        title: Text('Home'),
      ),
      body: Container(
        color: Colors.indigo.shade100,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.home_sharp,
                size: 70,
                color: Colors.blue,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () async{
                   var sharedPref= await SharedPreferences.getInstance();
                   sharedPref.setBool(PageState.KEYLOGIN, false);
                    Navigator.popAndPushNamed(context, 'account');
                  },
                  child: Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
      backgroundColor: Colors.indigo.shade50,
    );
  }
}
