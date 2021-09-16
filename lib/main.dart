import 'package:flutter/material.dart';
import 'package:travel/screens/curve_navigation_screen.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

void main() {
  timeDilation = 2.0; //Mac M1 ==> scroll so fast
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
        backgroundColor: Color(0xFF222222),
        textTheme: TextTheme(
          title: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
          body1: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          subtitle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white60,
          ),
        ),
      ),
      home: CurveNavigationScreen(),
    );
  }
}
