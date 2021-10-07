import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ppgReader.dart';
import 'menu.dart';
import 'data.dart';
import 'info.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => Menu()));
    });

    return MaterialApp(
        home: Scaffold(
            body: Card(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 300),
            child: Image.asset('assets/logo.JPG'),
          ),
          /* Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 10.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Menu()));
                },
                child: const Text('Let\'s Start Again'),
              )), */
        ],
      ),
    )));
  }
}
