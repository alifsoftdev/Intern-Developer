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
      backgroundColor: AppColor.bgColor,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xffffffff),
          elevation: 10,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
          selectedItemColor: Color(0xff042E2B),
          unselectedItemColor: Color(0xFF939696),
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: _currentIndex == 0
                  ? Image.asset("assets/icons/Homeselect.png")
                  : Image.asset("assets/icons/Home.png"),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: _currentIndex == 1
                    ? Image.asset("assets/icons/searchselect.png")
                    : Image.asset("assets/icons/Search.png"),
                label: "Search"),
            BottomNavigationBarItem(
                icon: _currentIndex == 2
                    ? Image.asset("assets/icons/Videoselect.png")
                    : Image.asset("assets/icons/Video.png"),
                label: "Record"),
            BottomNavigationBarItem(
                icon: _currentIndex == 3
                    ? Image.asset("assets/icons/Bookmarkselect.png")
                    : Image.asset("assets/icons/Bookmark.png"),
                label: "Saved"),
            BottomNavigationBarItem(
              icon: _currentIndex == 4
                  ? Image.asset("assets/icons/Settingselect.png")
                  : Image.asset("assets/icons/Setting.png"),
              label: "Setting",
            ),
          ],
        ),
      ),
      body: _pages[_currentIndex],
    );
  }
}
