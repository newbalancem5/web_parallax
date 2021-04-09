import 'package:flutter/material.dart';
import 'package:web_parallax/Style/size.dart';

class FirstBlock extends StatefulWidget {
  @override
  _FirstBlockState createState() => _FirstBlockState();
}

class _FirstBlockState extends State<FirstBlock> {
  double offset = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: displayWidth(context),
        height: displayHeight(context),
        color: Colors.blue,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            // decoration: BoxDecorationStyle(context),
            height: displayHeight(context) / 2,
            width: displayWidth(context) / 5,
            // color: Colors.black,
            child: Text('1'),
          ),
          Container(
            height: displayHeight(context) / 2,
            width: displayWidth(context) / 5,
            color: Colors.green,
            child: Text('2'),
          ),
          Container(
            height: displayHeight(context) / 2,
            width: displayWidth(context) / 5,
            color: Colors.indigo,
            child: Text('3'),
          )
        ]),
      ),
    );
  }
}
