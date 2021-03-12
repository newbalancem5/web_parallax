import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:web_parallax/Style/size.dart';

class FirstBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          child: Text('Flutter For Dev'),
          width: width,
          height: height,
        ),
        FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: 'assets/images/image_main2.png',
          width: displayWidth(context),
          height: displayHeight(context),
        ),
        Container(
          width: width,
          height: height,
          color: Colors.black,
          child: Text('qweqweqwe'),
        )
        // Container(
        //   color: Colors.black,
        //   width: displayWidth(context),
        //   height: displayHeight(context),
        // )
      ],
    );
  }
}
