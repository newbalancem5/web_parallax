import 'package:flutter/material.dart';
import 'package:web_parallax/Style/size.dart';
import 'package:web_parallax/Style/Decoration.dart';

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
            decoration: ContainerDecoration.containerRadius,
            height: displayHeight(context) / 2,
            width: displayWidth(context) / 5,
            // color: Colors.black,
            child: Text('1'),
          ),
          Container(
            decoration: ContainerDecoration.containerSecondRadius,
            height: displayHeight(context) / 2,
            width: displayWidth(context) / 5,
            child: Text('2'),
          ),
          Container(
            decoration: ContainerDecoration.containerThreeRadius,
            height: displayHeight(context) / 2,
            width: displayWidth(context) / 5,
            child: Text('3'),
          )
        ]),
      ),
    );
  }
}
