import 'package:dartdash/screens/Bottom%20Nav/bottom_nav.dart';
import 'package:dartdash/screens/Bottom%20Nav/bottom_nav_new.dart';
import 'package:flutter/material.dart';
import 'package:dartdash/services/notiservices.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'constants/constants.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await NotiServices.localNotificationInit();
  FirebaseMessaging.instance.getToken().then((value){

  });
  await FirebaseMessaging.instance.setAutoInitEnabled(true);
  FirebaseMessaging.onMessage.listen((event) {
    NotiServices.showNotification(event);
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: cyanDarkest),
        useMaterial3: true,
      ),
      home:  const BottomNav(currentIndex: 0,),
    );
  }
}
