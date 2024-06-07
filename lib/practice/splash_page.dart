import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageState();
  }
}class PageState extends State<SplashPage>{
  static const String KEYLOGIN="Login";
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
   whereToGo(

   );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(child: Icon(Icons.account_circle,size: 150,color: Colors.blue.shade300,)),
    );
  }

  void whereToGo() async{

    var sharedpref=await SharedPreferences.getInstance();

    var isLoggedin=sharedpref.getBool(KEYLOGIN);

    Timer(Duration(seconds: 2), () {

      if(isLoggedin!=null){
        if(isLoggedin){
          Navigator.popAndPushNamed(context, 'home');
        }else{
          Navigator.popAndPushNamed(context, 'account');
        }
      }else{
        Navigator.popAndPushNamed(context, 'account');
      }




    });
  }
}