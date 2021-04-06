import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:web_parallax/Style/size.dart';
import 'FirstBlock/FirstBlock.dart';
// import 'FirstBlock/FirstBlock.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String images = 'assets/images/image_main.jpg';
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
                // child: FirstBlock(),
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: images,
                  height: displayHeight(context),
                  width: displayWidth(context),
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
