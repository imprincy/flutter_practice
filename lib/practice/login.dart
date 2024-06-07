import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(60),
                ),
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/pexels.jpg",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            const Text(
              "explorer.shivam",
              style: TextStyle(fontSize: 28, fontFamily: "Pacifico"),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white70,
                          blurRadius: 24,
                          spreadRadius: 24)
                    ],
                    border: Border.all(color: Colors.black),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(12.0))),
                child: const Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Password",
                            contentPadding: EdgeInsets.all(12),
                            border: InputBorder.none),
                      ),
                    ),
                    Icon(Icons.remove_red_eye),
                    SizedBox(
                      width: 12,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 0,
                  shape: const StadiumBorder(),
                  minimumSize:
                      Size(MediaQuery.of(context).size.width * 0.9, 48)),
              child: const Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
