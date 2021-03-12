import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../Style/size.dart';
// import 'FirstBlock/FirstBlock.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double offset = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Material(
      child: NotificationListener<ScrollNotification>(
        onNotification: updateOffsetAccordingToScroll,
        child: ScrollConfiguration(
          behavior: NoScrollGlow(),
          child: Stack(
            children: [
              Positioned(
                top: -.45 * offset,
                // child: FirstBlock(),
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: 'assets/images/image_main2.png',
                  height: displayHeight(context),
                  width: displayWidth(context),
                ),
              ),
              Positioned(
                bottom: -.45 * offset,
                width: displayWidth(context),
                child: Container(
                  width: displayWidth(context),
                  child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Flutter For Dev',
                        ),
                        SizedBox(height: 20),
                        Text(
                          'новости, статьи, дизайн',
                        ),
                      ]),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: height,
                    ),
                    Container(
                      height: height,
                      width: width,
                      color: Colors.blue,
                    ),
                    Container(
                      height: height,
                      width: width,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            ],
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
