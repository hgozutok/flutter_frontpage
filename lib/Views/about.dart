import 'package:flutter/material.dart';
import 'package:flutter_frontpage/Widgets/navbar.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(context),
      body: Center(
        child: Text('About Page'),
      ),
    );
  }
}
