import 'package:flutter/material.dart';
import 'package:my_test/practice/splash_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AccountLoginState();
  }
}

class AccountLoginState extends State<AccountLogin> {
  var nameController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        title: Text(
          "Login",
          style: TextStyle(fontSize: 28, color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_circle,
              size: 80,
              color: Colors.blue,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 34.0, right: 34.0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 34.0, right: 34.0),
              child: TextField(
                controller: passController,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () async {
                  // if successfully logged in(Creds are correct)
                  var sharedprefs = await SharedPreferences.getInstance();
                  sharedprefs.setBool(PageState.KEYLOGIN, true);
                  Navigator.popAndPushNamed(context, 'home');
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
