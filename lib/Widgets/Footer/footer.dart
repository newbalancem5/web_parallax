import 'package:flutter/material.dart';
import 'package:flutterfordev/Style/helpers/_size.dart';

class Footer extends StatefulWidget {
  // const Footer({ Key? key }) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.redAccent),
      height: displayHeight(context) / 6,
      width: displayWidth(context),
      child: Text('Footer'),
    );
  }
}
