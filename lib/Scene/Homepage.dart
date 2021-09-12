import 'package:flutter/material.dart';
import 'package:flutterfordev/Scene/SecondBlock/SecondBlock.dart';
import 'package:flutterfordev/Scene/WelcomeBlock/welcomeBlock.dart';
import 'package:flutterfordev/Scroll/Scroll.dart';
import 'package:flutterfordev/style/_main.dart';

import 'FirstBlock/firstBlock.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String images = 'assets/images/image_main.png';
  double offset = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: NotificationListener<ScrollNotification>(
          onNotification: updateOffsetAccordingToScroll,
          child: ScrollConfiguration(
            behavior: NoScrollGlow(),
            child: Stack(
              children: [
                WelcomeBlock(),
                SingleChildScrollView(
                  clipBehavior: Clip.hardEdge,
                  child: Column(
                    children: [
                      SizedBox(
                        height: displayHeight(context),
                        width: displayWidth(context),
                      ),
                      FirstBlock(),
                      SecondBlock(),
                      // Footer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool updateOffsetAccordingToScroll(ScrollNotification scrollNotification) {
    setState(() => offset = scrollNotification.metrics.pixels);
    return true;
  }
}
