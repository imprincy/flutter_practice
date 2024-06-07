import 'package:flutter/material.dart';

class TextDecor extends StatefulWidget {
  const TextDecor({Key? key}) : super(key: key);

  @override
  State<TextDecor> createState() => _TextDecorState();
}

class _TextDecorState extends State<TextDecor> {
  @override
  Widget build(BuildContext context) {
    var emailText = TextEditingController();
    var passText = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Learning to Get TextInput"),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailText,
                decoration: InputDecoration(
                  labelText: "Princy Login",
                  prefixText: "Princy@gmail.com",
                  prefixStyle: TextStyle(fontSize: 18),
                  suffixText: "UserName Exists",
                  suffixStyle: TextStyle(fontSize: 8, fontFamily: "FontFirst"),
                  suffixIconColor: Colors.blue,
                  suffixIcon:
                      IconButton(icon: Icon(Icons.mail), onPressed: () {}),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange),
                    borderRadius: BorderRadius.circular(11),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink, width: 2),
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: passText,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.green)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(11),
                    ),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.black))),
              ),
              ElevatedButton(
                onPressed: () {
                  String uEmail = emailText.text.toString();
                  String uPass = passText.text;
                  print("Email: $uEmail,Pass: $uPass");
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
