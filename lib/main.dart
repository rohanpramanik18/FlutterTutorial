import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trialapp/utils/routes.dart';
import 'pages/homepage.dart';
import './pages/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.green,
          primaryColorLight: Colors.green,
          brightness: Brightness.light,
          fontFamily: 'Raleway',
          appBarTheme: AppBarTheme(
            elevation: 2,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(
                color: Colors.green,
                fontSize: 23,
                fontWeight: FontWeight.w800,
                fontFamily: 'Raleway'),
          )),
      initialRoute: "/home",
      routes: {
        MyRoutes.routeHome: (context) => HomePage(),
        MyRoutes.routeLogin: (context) => LoginPage(),
      },
    );
  }
}
