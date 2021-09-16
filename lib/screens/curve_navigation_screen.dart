import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:travel/navbar_key.dart';

import 'category_screen.dart';
import 'home_screen.dart';
import 'profile_screen.dart';

class CurveNavigationScreen extends StatefulWidget {
  @override
  _CurveNavigationScreenState createState() => _CurveNavigationScreenState();
}

class _CurveNavigationScreenState extends State<CurveNavigationScreen> {
  int _pages = 0;
  final _screens = [
    HomeScreen(),
    ProfileScreen(),
    CategoryScreen(),
  ];
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: NavBarKey.getKey,
        index: 0,
        backgroundColor: Theme.of(context).primaryColor,
        animationDuration: Duration(milliseconds: 150),
        onTap: (index) {
          setState(() {
            _pages = index;
          });
        },
        items: [
          IconButton(
            icon: Icon(Icons.home, size: 30),
            onPressed: null,
          ),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/mh-celeb-name-changes-1567632828.png?crop=0.460xw:0.920xh;0,0&resize=640:*'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
          ),
          IconButton(
            icon: Icon(Icons.list, size: 30),
            onPressed: null,
          ),
        ],
      ),
      body: _screens[_pages],
    );
  }
}
