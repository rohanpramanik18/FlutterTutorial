import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rohan App",
        ),
        elevation: 5,
      ),
      body: Center(
        child: Container(
          child: Text("Rohan"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
