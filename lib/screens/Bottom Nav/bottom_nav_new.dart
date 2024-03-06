import 'package:dartdash/constants/constants.dart';
import 'package:dartdash/screens/community/community.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Home/home.dart';
import '../Profile/profile.dart';
import '../Records/records.dart';
import '../book_appointment/book_appointment.dart';

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
    const RecordsPage(),
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => const BookAppointment()));
          },
          child: Center(
            child: Image.asset(
              "assets/bottom_nav_icons/plus.png",
              width: 32,
              height: 32,
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
                      width: 28,
                      height: 28,
                      color: green,
                    ),
                    icon: Image.asset(
                      'assets/bottom_nav_icons/Home.png',
                      width: 28,
                      height: 28,
                      color: Colors.grey,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Image.asset(
                      'assets/bottom_nav_icons/records.png',
                      width: 32,
                      height: 32,
                      color: green,
                    ),
                    icon: Image.asset(
                      'assets/bottom_nav_icons/records.png',
                      width: 32,
                      height: 32,
                      color: Colors.grey,
                    ),
                    label: 'Records',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Image.asset(
                      'assets/bottom_nav_icons/community.png',
                      width: 32,
                      height: 32,
                      color: green,
                    ),
                    icon: Image.asset(
                      'assets/bottom_nav_icons/community.png',
                      width: 32,
                      height: 32,
                      color: Colors.grey,
                    ),
                    label: 'Community',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.person,
                      color: green,
                      size: 28,
                    ),
                    icon: const Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 28,
                    ),
                    // activeIcon: Image.asset(
                    //   'assets/bottom_nav_icons/profile.png',
                    //   width: 22,
                    //   height: 22,
                    //   color: green,
                    // ),
                    // icon: Image.asset(
                    //   'assets/bottom_nav_icons/profile.png',
                    //   width: 22,
                    //   height: 22,
                    //   color: Colors.grey,
                    // ),
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