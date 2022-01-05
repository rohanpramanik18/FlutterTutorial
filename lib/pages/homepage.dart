import 'package:flutter/material.dart';
import 'package:trialapp/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rohan App"),
      ),
      body: Center(
        child: Container(
          child: Text("Rohan"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
