import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trialapp/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  String imageURL =
      "https://media-exp1.licdn.com/dms/image/C5603AQHgF6S-FNg-Nw/profile-displayphoto-shrink_100_100/0/1638794157466?e=1644451200&v=beta&t=lEGIr4lj-AItQ3PLyjud87dhf8PwqG8zwZrSzfFCYik";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text("Rohan Pramanik"),
              accountEmail: Text("rohan.pramanik01@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageURL),
              ),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 30),
            leading: Icon(
              CupertinoIcons.home,
              color: Theme.of(context).primaryColorLight,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.black),
              textScaleFactor: 1.4,
            ),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, MyRoutes.routeLogin),
            contentPadding: EdgeInsets.only(left: 30),
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Theme.of(context).primaryColorLight,
            ),
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.black),
              textScaleFactor: 1.4,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 30),
            leading: Icon(
              CupertinoIcons.mail,
              color: Theme.of(context).primaryColorLight,
            ),
            title: Text(
              "Email",
              style: TextStyle(color: Colors.black),
              textScaleFactor: 1.4,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 30),
            onTap: () => Navigator.pop(context),
            leading: Icon(
              CupertinoIcons.backward,
              color: Theme.of(context).primaryColorLight,
            ),
            title: Text(
              "Logout",
              style: TextStyle(color: Colors.black),
              textScaleFactor: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
