import 'package:flutter/material.dart';
import 'package:web_parallax/Style/FontStyle.dart';

class TeLegramStatsPage extends StatefulWidget {
  @override
  _TeLegramStatsPageState createState() => _TeLegramStatsPageState();
}

class _TeLegramStatsPageState extends State<TeLegramStatsPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            "Нас в телеграме: 1601",
            style: FontStyleText.text,
          ),
        ),
      ],
    );
  }
}
