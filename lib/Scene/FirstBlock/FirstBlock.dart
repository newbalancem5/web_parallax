import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:web_parallax/Style/FontStyle.dart';
import 'package:web_parallax/Style/size.dart';

class FirstBlock extends StatefulWidget {
  @override
  _FirstBlockState createState() => _FirstBlockState();
}

class _FirstBlockState extends State<FirstBlock> {
  double offset = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: -.45 * offset,
        // width: displayWidth(context),
        child: Container(
          width: displayWidth(context),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Flutter For Dev',
                    style: FontStyleText.title,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Новости, статьи, дизайн',
                    style: FontStyleText.info,
                  ),
                ]),
          ),
        ),
      ),
    ]);
  }
}
