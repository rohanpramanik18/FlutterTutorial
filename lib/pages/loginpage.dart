import 'package:flutter/material.dart';
import 'package:trialapp/pages/homepage.dart';
import 'package:trialapp/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 25,
            ),
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 35,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 70),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text(
                        'Username',
                        style: TextStyle(fontSize: 17),
                      ),
                      hintText: 'Enter you username',
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text(
                        'Password',
                        style: TextStyle(fontSize: 17),
                      ),
                      hintText: 'Enter you password',
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () => {
                Navigator.pushNamed(context, MyRoutes.routeHome),
              },
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              style: TextButton.styleFrom(
                elevation: 10,
                minimumSize: Size(100, 50),
              ),
            )
          ],
        ),
      ),
    );
  }
}
