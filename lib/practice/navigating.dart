import 'package:flutter/material.dart';
import 'package:my_test/practice/button_pages.dart';

class BottomMenu extends StatefulWidget {
  const BottomMenu({super.key});

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  var _pagesData=[HomeButton(),Chat(),Live(),Call(),Love()];
  int _selecteditem=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        title: Text("Bottom Navigation Learning"),
      ),body: Center(
        child: _pagesData[_selecteditem]
      ),bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.green,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,size: 20,),label: 'Home', backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.message,color: Colors.white,size: 20,),label: 'Chat', backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.live_tv,color: Colors.white,size: 20,),label: 'Live', backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.call,color: Colors.white,size: 20,),label: 'Call', backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_outline_outlined,color: Colors.white,size: 20,),label: 'Likes', backgroundColor: Colors.black)
      ],
      currentIndex: _selecteditem,
      onTap: (setValue){
        setState(() {
          _selecteditem=setValue;
        });
      },
    ),
    );
  }
}
