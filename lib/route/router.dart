import 'package:flutter/material.dart';
import 'package:flutterfordev/Scene/Homepage.dart';
import 'package:flutterfordev/Scene/Notfound/NotFound.dart';

class RouterPage extends StatefulWidget {
  const RouterPage({Key key}) : super(key: key);
  @override
  _RouterPageState createState() => _RouterPageState();
}

class _RouterPageState extends State<RouterPage> {
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
