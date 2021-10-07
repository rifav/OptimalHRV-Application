import 'package:flutter/material.dart';

import 'menu.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 150.0),
            child: const Text('Data visualized here'),
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
