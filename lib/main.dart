import 'package:flutter/material.dart';

import 'Scene/Homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter For Dev',
      home: HomePage(),
    );
  }
}
