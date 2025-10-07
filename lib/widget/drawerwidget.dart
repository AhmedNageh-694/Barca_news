import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app/views/login.dart';
import 'package:news_app/views/sign_up.dart';

Builder buildDrawer() {
  return Builder(
    builder: (context) {
      return Drawer(
        backgroundColor: Colors.indigo[900],
        child: ListView(
          shrinkWrap: false,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 10, bottom: 40),
              child: Row(
                children: [
                  Text(
                    "Barcelona News ",
                    style: TextStyle(
                      color: Colors.red,
                      fontFamily: 'CaveatBrush',
                      fontSize: 35,
                    ),
                  ),
                  FaIcon(
                    FontAwesomeIcons.volleyball,
                    color: Colors.white,
                    size: 25,
                  ),
                ],
              ),
            ),
            ListTile(
              hoverColor: Colors.indigoAccent,
              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => Login()));
              },
              title: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'CaveatBrush',
                ),
              ),
              leading: FaIcon(
                FontAwesomeIcons.doorOpen,
                color: Colors.red,
                size: 30,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              hoverColor: Colors.indigoAccent,

              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => SignUp()));
              },
              title: Text(
                "Sing up",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontFamily: 'CaveatBrush',
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: FaIcon(
                FontAwesomeIcons.userPlus,
                color: Colors.red,
                size: 30,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              hoverColor: Colors.indigoAccent,

              onTap: () {},
              title: Text(
                "Settings",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontFamily: 'CaveatBrush',
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(Icons.settings, color: Colors.red, size: 30),
            ),
          ],
        ),
      );
    },
  );
}
