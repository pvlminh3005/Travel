import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
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
      ),
      home: HomeScreen(),
    );
  }
}
