import 'package:flutter/material.dart';
import 'menu.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PPG Reader'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 150.0),
            child: const Text('PPG Functionality to be added here'),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10.0),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Menu()));
              },
              child: const Text('Go back to menu'),
            ),
          ),
        ],
      ),
    );
  }
}
