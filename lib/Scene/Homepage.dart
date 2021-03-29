import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:web_parallax/Scene/FirstBlock/FirstBlock.dart';
import '../Style/size.dart';
// import 'package:web_parallax/Scene/FirstBlock/FirstBlock.dart';
// import 'package:web_parallax/Style/FontStyle.dart';
// import 'FirstBlock/FirstBlock.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double offset = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: NotificationListener<ScrollNotification>(
        onNotification: updateOffsetAccordingToScroll,
        child: ScrollConfiguration(
          behavior: NoScrollGlow(),
          child: Stack(
            children: [
              Positioned(
                top: -.45 * offset,
                width: displayWidth(context),
                // child: FirstBlock(),
                child: Align(
                  alignment: Alignment.topLeft,
                  // child: FirstBlock(),
                ),
              ),
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
                // bottom: -.45 * offset,
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
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: [
                    SizedBox(
                      height: displayHeight(context),
                      width: displayWidth(context),
                    ),
                    FirstBlock(),
                    Container(
                      height: displayHeight(context),
                      width: displayWidth(context),
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
