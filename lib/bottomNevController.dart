import 'package:flutter/material.dart';
import 'package:intern_developer/BottomNavController/home.dart';
import 'package:intern_developer/BottomNavController/record.dart';
import 'package:intern_developer/BottomNavController/saved.dart';
import 'package:intern_developer/BottomNavController/search.dart';
import 'package:intern_developer/BottomNavController/setting.dart';
import 'package:intern_developer/const/appColor.dart';

class BottomNavController extends StatefulWidget {
  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _currentIndex = 0;

  final _pages = [
    Home_Screen(),
    Search_Screen(),
    Record_Screen(),
    Saved_Screen(),
    Setting_Screen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        
        elevation: 20,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
       selectedItemColor: AppColor.darkGreen,
        unselectedItemColor: Color(0xFF939696),
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.videocam_sharp,
                size: 30,
              ),
              label: "Record"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.save_sharp,
                size: 30,
              ),
              label: "Saved"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 30,
            ),
            label: "Setting",
          ),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
