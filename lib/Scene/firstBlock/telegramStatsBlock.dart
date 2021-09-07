import 'package:flutter/material.dart';
import 'package:flutterfordev/Style/abstract/_fontstyle.dart';

class TeLegramStatsPage extends StatefulWidget {
  @override
  _TeLegramStatsPageState createState() => _TeLegramStatsPageState();
}

class _TeLegramStatsPageState extends State<TeLegramStatsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            'Нас в телеграме: 1601',
            style: FontStyleText.text,
          ),
        ),
      ],
    );
  }
}
