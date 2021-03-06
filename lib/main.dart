import 'dart:ui';

import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    title: "Animation",
    home: Page1(),
  ));
}

class Page1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        heightFactor: 10,
        child: ElevatedButton(
          child: Text('There is something inside you', style: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

class Page2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Page 2'),
      ),
    );
  }
}


class Page3 extends AlertDialog {
  Widget buid(BuildContext context) {
    return AlertDialog(
      title: Text("Alert"), 
    );
  }
}
