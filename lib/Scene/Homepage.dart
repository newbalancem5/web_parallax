import 'package:flutter/material.dart';
import 'package:flutterfordev/Scene/scene_main.dart';

import 'package:flutterfordev/Scroll/Scroll.dart';
import 'package:flutterfordev/style/_main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                      FeedBackScreen(),
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
