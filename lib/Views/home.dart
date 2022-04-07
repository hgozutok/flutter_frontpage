import 'package:flutter/material.dart';
import 'package:flutter_frontpage/Widgets/navbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Column(
                  children: [
                    Image.asset('assets/images/hugo.png'),
                    Text("HUGO", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Text("We help you to find the best products for you",
                  style: TextStyle(
                      color: Color.fromARGB(255, 5, 0, 0), fontSize: 30)),
            ],
          )
        ],
      ),
    );
  }
}
