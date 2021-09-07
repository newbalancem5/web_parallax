// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterfordev/Scene/Notfound/NotFound.dart';

import 'Scene/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {'/': (context) => HomePage()},
      onUnknownRoute: (context) => MaterialPageRoute(
        builder: (context) => NotFoundPage(),
      ),
      title: 'Flutter For Dev',
    );
  }
}
