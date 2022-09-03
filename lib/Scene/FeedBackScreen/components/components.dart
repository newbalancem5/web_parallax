import 'package:flutter/material.dart';
import 'package:flutterfordev/Widgets/customButton.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../const/_const.dart';
import '../../../style/_main.dart';

class FeedBackButton extends StatefulWidget {
  const FeedBackButton({Key key}) : super(key: key);

  @override
  State<FeedBackButton> createState() => _FeedBackButtonState();
}

class _FeedBackButtonState extends State<FeedBackButton> {
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonHeight: 64,
      buttonWidth: 128,
      buttonHoverColor: Color.fromARGB(251, 0, 118, 165),
      buttonBackgroudColor: Color.fromARGB(255, 255, 255, 255),
      splashColorButton: Colors.redAccent[200],
      buttonShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: Colors.transparent,
        ),
      ),
      buttonBoxShadow: [
        BoxShadow(
          color: Color.fromARGB(125, 187, 0, 255),
          blurRadius: 15,
          spreadRadius: 5,
          offset: Offset.fromDirection(20),
        ),
      ],
      onPressed: () {
        launchUrl(
          Uri.parse(
            LinkSocial.mytg,
          ),
        );
      },
      buttonText: callme,
      customTextStyle: FontStyleText.text,
      buttonBorderRadius: BorderRadius.circular(10),
    );
  }
}
