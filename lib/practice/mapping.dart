import 'package:flutter/material.dart';

class Mapping extends StatelessWidget {
  var arrData = [
    {'name':'piya',
    'mobno':'9871926766',
    'add':'1'},

    {'name':'siya',
      'mobno':'8876681920',
      'add':'2'
    },
    {'name':'kajal',
      'mobno':'87619208710',
      'add':3
    },
    {'name':'princy',
      'mobno':'7675655639',
      'add':4,
    },
    {'name':'shivam',
      'mobno':'89871342678',
      'add':'5',
    },
    {'name':'piya',
      'mobno':'9871926766',
      'add':'1'},
    {'name':'shivam',
      'mobno':'89871342678',
      'add':'5',
    },
    {'name':'princy',
      'mobno':'7675655639',
      'add':4,
    },
    {'name':'kajal',
      'mobno':'87619208710',
      'add':3
    },
    {'name':'siya',
      'mobno':'8876681920',
      'add':'2'
    },
    {'name':'kajal',
      'mobno':'87619208710',
      'add':3
    },
    {'name':'princy',
      'mobno':'7675655639',
      'add':4,
    },
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade100,
        title: Text(
          "Mapping",
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
      ),
      body: ListView(
        children: arrData
            .map((value) => ListTile(
          leading: Icon(Icons.account_circle),
          title: Text(value['name'].toString(),style: TextStyle(fontFamily: 'FontFirst'),),
          subtitle: Text(value['mobno'].toString()),
          trailing: Text(value['add'].toString()),
        ))
            .toList(),
      ),
    );
  }
}
