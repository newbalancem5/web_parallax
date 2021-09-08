import 'package:flutter/material.dart';
import 'package:flutterfordev/Style/_main.dart';
import 'package:flutterfordev/const/_const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomeBlock extends StatelessWidget {
  // const WelcomeBlock({ Key? key }) : super(key: key)

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            ffdtext,
            style: FontStyleText.title,
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Container(
            child: Image.asset(
              AppImages.ffdlogo,
              width: displayWidth(context) / 1.3,
              height: displayHeight(context) / 1.3,
            ),
          ),
        ),
        Icon(
          FontAwesomeIcons.arrowAltCircleDown,
          size: 60,
          color: Colors.black38,
        ),
      ],
    );
  }
}
