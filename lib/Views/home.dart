import 'package:flutter/material.dart';
import 'package:flutter_frontpage/Widgets/navbar.dart';
import 'package:flutter_frontpage/db/app_db.dart';


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

  String? name;
  @override
  initState() {
    super.initState();
    setState(() {
      AppDb().getCustomerName(1).then((value) {
        name = value;
        print("name" + name!);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/landing.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.5),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Text(
                        'Flutter Header for Landing',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.5),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Text("We help you to find the best products for you",
                          style: TextStyle(
                              color: Color.fromARGB(255, 5, 0, 0),
                              fontSize: 30)),
                      TextButton(
                        child: Text("Shop Now",
                            style: TextStyle(
                                color: Color.fromARGB(255, 5, 0, 0),
                                fontSize: 30)),
                        onPressed: () async {
                          var res =
                              await AppDb().getCustomerName(2).then((value) {
                            setState(() {
                              name = value.toString();
                              print("name" + name!);
                            });
                          });
                          // print(res.toString());
                        },
                      ),
                      Text(name ?? "null",
                          style: TextStyle(
                              color: Color.fromARGB(255, 5, 0, 0),
                              fontSize: 30)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
