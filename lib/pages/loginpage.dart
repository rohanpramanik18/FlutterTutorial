import 'package:flutter/material.dart';
import 'package:trialapp/pages/homepage.dart';
import 'package:trialapp/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeState = false;
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

            InkWell(
              onTap: () async {
                setState(() {
                  changeState = true;
                });

                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.routeHome);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: changeState ? 50 : 50,
                width: changeState ? 50 : 100,
                alignment: Alignment.center,
                child: changeState
                    ? Icon(Icons.done)
                    : Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(changeState ? 20 : 8),
                ),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () => {
            //     Navigator.pushNamed(context, MyRoutes.routeHome),
            //   },
            //   child: Text(
            //     "Login",
            //     style: TextStyle(
            //       fontSize: 18,
            //       fontWeight: FontWeight.w600,
            //     ),
            //   ),
            //   style: TextButton.styleFrom(
            //     elevation: 10,
            //     minimumSize: Size(100, 50),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
