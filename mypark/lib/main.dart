import 'package:flutter/material.dart';
import 'package:mypark/home_screen.dart';
import 'package:mypark/profile_screen.dart';
import 'package:mypark/tab_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my-Park',
      initialRoute: '/',
      routes: {
        '/': (context) => TabScreen(),
        '/profile': (context) => ProfilePage(),
        '/home':(context)=>HomePage()
      },
    );
  }
}


