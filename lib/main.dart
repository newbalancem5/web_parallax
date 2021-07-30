// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:web_parallax/domain/api_clients/api_client.dart';
// import 'package:web_parallax/domain/api_clients/api_client.dart';

import 'Scene/homepage.dart';

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
