import 'package:flutter/material.dart';
import 'package:trialapp/pages/homepage.dart';
import 'package:trialapp/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool changeState = false;
  String name = '';

  moveToHomePage(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeState = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.routeHome);
      setState(() {
        changeState = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Welcome $name",
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
                      onChanged: (value) => {name = value, setState(() {})},
                      validator: (value) {
                        if (!(value != "")) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
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
                      validator: (value) {
                        if (!(value != "")) {
                          return "Password cannot be empty";
                        } else if (value!.length < 6) {
                          return "Password cannot be less than 6";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),

              Material(
                color: Theme.of(context).primaryColorLight,
                borderRadius: BorderRadius.circular(changeState ? 50 : 8),
                child: InkWell(
                  onTap: () => moveToHomePage(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: changeState ? 50 : 50,
                    width: changeState ? 50 : 120,
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
      ),
    );
  }
}
