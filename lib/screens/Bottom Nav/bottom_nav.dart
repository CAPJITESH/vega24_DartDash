// import 'package:dartdash/screens/Bottom%20Nav/bottomNavitem.dart';
// import 'package:dartdash/screens/Home/home.dart';
// import 'package:dartdash/screens/Profile/profile.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
// import 'package:toastification/toastification.dart';
//
// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({super.key});
//
//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }
//
// class _BottomNavBarState extends State<BottomNavBar> {
//   bool keyboard = false;
//   final PageController _pageController = PageController();
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   int _pageIndex = 0;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     var keyboardVisibilityController = KeyboardVisibilityController();
//     keyboardVisibilityController.onChange.listen((bool visible) {
//       setState(() {
//         keyboard = visible;
//       });
//     });
//
//     // TODO: implement initState
//     super.initState();
//   }
//
//   void _setPage(int pageIndex) {
//     setState(() {
//       _pageController.jumpToPage(pageIndex);
//       _pageIndex = pageIndex;
//     });
//   }
//
//   DateTime? currentBackPressTime;
//   Future<bool> onWillPop() {
//     DateTime now = DateTime.now();
//     if (currentBackPressTime == null ||
//         now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
//       if (_pageController.page == 0) {
//         currentBackPressTime = now;
//         toastification.show(
//           context: context,
//           title: const Text('Tap on back again to close'),
//           alignment: const Alignment(0.5, 0.9),
//           showProgressBar: false,
//           autoCloseDuration: const Duration(seconds: 2),
//         );
//       } else {
//         _setPage(0);
//       }
//
//       return Future.value(false);
//     }
//     return Future.value(true);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: onWillPop,
//       child: Scaffold(
//         key: _scaffoldKey,
//         backgroundColor: Colors.white,
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         floatingActionButton: keyboard || _pageIndex == 2
//             ? const SizedBox()
//             : FloatingActionButton(
//                 backgroundColor: Colors.blue,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(100),
//                 ),
//                 onPressed: () => _setPage(1),
//                 child: const Icon(
//                   Icons.add_rounded,
//                   color: Colors.white,
//                   size: 25,
//                 ),
//               ),
//         bottomNavigationBar: _pageIndex != 2
//             ? BottomAppBar(
//                 height: 55,
//                 elevation: 50,
//                 color: Colors.white,
//                 padding: EdgeInsets.zero,
//                 notchMargin: 8,
//                 shadowColor: Colors.grey,
//                 clipBehavior: Clip.antiAlias,
//                 shape: const CircularNotchedRectangle(),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10),
//                     // boxShadow: [
//                     //   BoxShadow(
//                     //     color: grey1,
//                     //     spreadRadius: 10,
//                     //     blurRadius: 12,
//                     //     // offset: const Offset(0, 1),
//                     //   ),
//                     // ],
//                   ),
//                   child: Row(
//                     children: [
//                       BottomNavItem(
//                         name: "Home",
//                         iconData: "assets/home_nav.svg",
//                         isSelected: _pageIndex == 0,
//                         onTap: () => _setPage(0),
//                       ),
//                      // const Expanded(child: SizedBox()),
//                       BottomNavItem(
//                         name: "Home",
//                         iconData: "assets/home_nav.svg",
//                         isSelected: _pageIndex == 0,
//                         onTap: () => _setPage(0),
//                       ),
//                      const Expanded(child: SizedBox()),
//                       const Expanded(child: SizedBox()),
//                       const Expanded(child: SizedBox()),
//
//                       BottomNavItem(
//                         name: "Profile",
//                         iconData: "assets/profile_nav.svg",
//                         isSelected: _pageIndex == 1,
//                         onTap: () => _setPage(1),
//                       ),
//                       //const Expanded(child: SizedBox()),
//                       BottomNavItem(
//                         name: "Home",
//                         iconData: "assets/home_nav.svg",
//                         isSelected: _pageIndex == 0,
//                         onTap: () => _setPage(0),
//                       ),
//                       const Expanded(child: SizedBox()),
//                     ],
//                   ),
//                 ),
//               )
//             : const SizedBox.shrink(),
//         body: PageView(
//           physics: const NeverScrollableScrollPhysics(),
//           controller: _pageController,
//           children: const [HomePage(), ProfilePage()],
//         ),
//       ),
//     );
//   }
// }
