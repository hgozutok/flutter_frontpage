import 'package:flutter/material.dart';
import 'package:flutter_frontpage/Views/about.dart';
import 'package:flutter_frontpage/Views/home.dart';

AppBar NavBar(BuildContext context) {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image.asset('assets/images/hugo.png'),
        Text("HUGO", style: TextStyle(color: Colors.white)),
      ],
    ),
    elevation: 0,
    actions: <Widget>[
      TextButton(
        child: Text("Home", style: TextStyle(color: Colors.white)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    MyHomePage(title: 'Flutter Landing Home Page')),
          );
        },
      ),
      TextButton(
        child: Text("Shop", style: TextStyle(color: Colors.white)),
        onPressed: () {},
      ),
      TextButton(
        child: const Text("About us", style: TextStyle(color: Colors.white)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AboutPage()),
          );
        },
      ),
      TextButton(
        child: Text("Contact us", style: TextStyle(color: Colors.white)),
        onPressed: () {},
      ),
    ],
  );
}
