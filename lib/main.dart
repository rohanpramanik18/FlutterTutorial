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
        primarySwatch: Colors.red,
        brightness: Brightness.light,
        fontFamily: 'Raleway',
      ),
      initialRoute: "/login",
      routes: {
        MyRoutes.routeHome: (context) => HomePage(),
        MyRoutes.routeLogin: (context) => LoginPage(),
      },
    );
  }
}
