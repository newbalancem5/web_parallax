import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutterfordev/Scene/SecondBlock/SecondBlock.dart';
// import 'package:transparent_image/transparent_image.dart';
import 'package:flutterfordev/Scene/WelcomeBlock/welcomeBlock.dart';
import 'package:flutterfordev/Scroll/Scroll.dart';
import 'package:flutterfordev/Style/helpers/_size.dart';
// import 'package:flutterfordev/Widgets/Footer/footer.dart';
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
                Container(
                  child: Text(
                    'asd',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
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
