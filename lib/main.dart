

import 'package:flutter/material.dart';
import 'package:my_test/car_database/car_screen.dart';
import 'package:my_test/employee_Database/emp_screen.dart';
import 'package:my_test/fruit_database/fruit_screen.dart';
import 'package:my_test/main_screen.dart';
import 'package:my_test/music_database/song_screen.dart';
import 'package:my_test/practice/bim.dart';
import 'package:my_test/practice/bottom.dart';
import 'package:my_test/practice/clipper.dart';
import 'package:my_test/practice/drawer.dart';
import 'package:my_test/practice/fade_curve.dart';
import 'package:my_test/practice/first_Screen.dart';
import 'package:my_test/practice/foo_Animation.dart';
import 'package:my_test/practice/hero.dart';
import 'package:my_test/practice/heroes.dart';
import 'package:my_test/practice/homepage.dart';
import 'package:my_test/practice/learn_db_screen.dart';
import 'package:my_test/practice/login_page.dart';
import 'package:my_test/practice/mapping.dart';
import 'package:my_test/practice/navigating.dart';
import 'package:my_test/practice/opaque.dart';
import 'package:my_test/practice/prefer.dart';
import 'package:my_test/practice/preference.dart';
import 'package:my_test/practice/ripele.dart';
import 'package:my_test/practice/second_screen.dart';
import 'package:my_test/practice/show_user_screen.dart';
import 'package:my_test/practice/splash_page.dart';
import 'package:my_test/practice/table_dart.dart';
import 'package:my_test/practice/third_screen.dart';
import 'package:my_test/practice/twin.dart';
import 'package:my_test/practice/wheel.dart';
import 'package:my_test/practicing_by_own/draggable_sheet.dart';
import 'package:my_test/practicing_by_own/scroll_widget_practice.dart';
import 'package:my_test/vegeis_database/veg_screen.dart';

void main() {
  runApp(MyLearning());
}

class MyLearning extends StatelessWidget {
  const MyLearning({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    initialRoute: 'mainScreen',
    routes: {
      'yourBMI':(context)=>YourBMI(),
      'fooAnimation' :(context)=> ContainerAnimation(),
      'opaque':(context)=> AnimateOpacity(),
      'hero':(context)=> FirstHero(),
      'heroes':(context)=>SecondPage(),
      'fadeCurve':(context)=>FadedAnimation(),
      'scroll':(context)=>WheelScroll(),
      'clip':(context)=>React(),
      'mapping':(context)=>Mapping(),
      'twin':(context)=>TwinAnimation(),
      'ripel':(context)=>Ripel(),
      'prefer':(context)=>Prefer(),
      'splash':(context)=>SplashPage(),
      'account':(context)=>AccountLogin(),
      'home':(context)=>PageHome(),
      'bottom':(context)=>BottomState(),
      'drawer':(context)=>KingFisher(),
      'table':(context)=>Tabling(),
      'bottomMenu':(context)=>BottomMenu(),
      'learn' :(context)=>Learn(),
      'showUserScreen' :(context)=>ShowUserScreen(),
      'preference':(context)=>StoringData(),
      'employeeScreen':(context)=>EmployeeScreen(),
      'fruitScreen':(context)=>FruitScreen(),
      'carScreen':(context)=>CarScreen(),
      'vegScreen':(context)=>VegetableScreen(),
      'songScreen':(context)=>SongScreen(),
      'scrollWidget':(context)=>ScrollWidget(),
      'drag':(context)=>DragSheet(),
      'mainScreen':(context)=>MainScreen()

    },
      theme: ThemeData(
          textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: 28,
          color: Colors.white,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
        ),
        labelSmall: TextStyle(
          fontSize: 14,
        ),
        bodySmall: TextStyle(
            fontSize: 14,
            fontStyle: FontStyle.italic),
        bodyLarge: TextStyle(
          fontSize: 14,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
        ),
      )),
    );
  }
}
// TextStyle getMyFontStyle(){
//   return const TextStyle(
//     fontFamily: "Pacifico"
//   );
// }
