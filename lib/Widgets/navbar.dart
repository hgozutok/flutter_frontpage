import 'package:flutter/material.dart';

AppBar NavBar() {
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
        onPressed: () {},
      ),
      TextButton(
        child: Text("Shop", style: TextStyle(color: Colors.white)),
        onPressed: () {},
      ),
      TextButton(
        child: const Text("About us", style: TextStyle(color: Colors.white)),
        onPressed: () {},
      ),
      TextButton(
        child: Text("Contact us", style: TextStyle(color: Colors.white)),
        onPressed: () {},
      ),
    ],
  );
}
