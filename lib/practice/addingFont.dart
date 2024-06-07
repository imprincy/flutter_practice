import 'package:flutter/material.dart';

class MyFont extends StatelessWidget {

  const MyFont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My App Theme",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Column(
        children: [
          Text(
            "Hello World",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.cyan),
          ),
          Text(
            "Hello India",
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Text(
            "Hello Noida",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Text(
            "Hello Ludhiana",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            "Hello Bangalore",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
