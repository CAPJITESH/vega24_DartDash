import 'package:dartdash/constants/constants.dart';
import 'package:dartdash/screens/community/community.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Home/home.dart';
import '../Profile/profile.dart';
import '../coding_mock/codingMock.dart';
import '../company_info/company_info.dart';

class BottomNav extends StatefulWidget {
  final int currentIndex;
  const BottomNav({required this.currentIndex, super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  List<Widget> pages = [
    const HomePage(),
    const CompanyInfoPage(),
    const CommunityPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) async {
    if (index >= 0 && index < pages.length) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 40),
        child: FloatingActionButton(
          isExtended: true,
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 0,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          backgroundColor: green,
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onPressed: () async {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Prep()));
          },
          child: Center(
            child: Image.asset(
              "assets/bottom_nav_icons/Home.png",
              width: 25,
              height: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      body: Stack(
        children: [
          pages.elementAt(_selectedIndex),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    //spreadRadius: 23,
                    color: Colors.black.withOpacity(0.26),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: BottomNavigationBar(
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                unselectedItemColor: const Color(0xff959595),
                selectedItemColor: Colors.black54,
                selectedFontSize: 10,
                unselectedFontSize: 10,
                unselectedLabelStyle: const TextStyle(
                  color: Color(0xff959595),
                  fontFamily: "Lato",
                ),
                selectedLabelStyle: const TextStyle(
                  color: Colors.black54,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w500,
                ),
                backgroundColor: Colors.transparent,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    activeIcon: Image.asset(
                      'assets/bottom_nav_icons/Home.png',
                      width: 24,
                      height: 24,
                      color: green,
                    ),
                    icon: Image.asset(
                      'assets/bottom_nav_icons/Home.png',
                      width: 24,
                      height: 24,
                      color: Colors.grey,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Image.asset(
                      'assets/bottom_nav_icons/Home.png',
                      width: 26,
                      height: 26,
                      color: green,
                    ),
                    icon: Image.asset(
                      'assets/bottom_nav_icons/Home.png',
                      width: 26,
                      height: 26,
                      color: Colors.grey,
                    ),
                    label: 'Company Info',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Image.asset(
                      'assets/bottom_nav_icons/Home.png',
                      width: 24,
                      height: 24,
                      color: green,
                    ),
                    icon: Image.asset(
                      'assets/bottom_nav_icons/Home.png',
                      width: 24,
                      height: 24,
                      color: Colors.grey,
                    ),
                    label: 'Community',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Image.asset(
                      'assets/bottom_nav_icons/Home.png',
                      width: 24,
                      height: 24,
                      color: green,
                    ),
                    icon: Image.asset(
                      'assets/bottom_nav_icons/Home.png',
                      width: 24,
                      height: 24,
                      color: Colors.grey,
                    ),
                    label: 'My Profile',
                  ),
                ],
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
              ),
            ),
          ),
        ],
      ),
    );
  }
}