import 'package:flutter/material.dart';
import 'package:web_parallax/Style/FontStyle.dart';
import 'package:web_parallax/Style/size.dart';
import 'package:web_parallax/const/app_images.dart';

class WelcomeBlock extends StatelessWidget {
  // const WelcomeBlock({ Key? key }) : super(key: key)

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            'Flutter For Dev - самое интересное в мире Flutter ',
            style: FontStyleText.title,
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Container(
            child: Image.asset(
              AppImages.ffdlogo,
              width: displayWidth(context) / 1.2,
              height: displayHeight(context) / 1.2,
            ),
          ),
        ),
        Container(
          child: Text(''),
        ),
      ],
    );
  }
}
