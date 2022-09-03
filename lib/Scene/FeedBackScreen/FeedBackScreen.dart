import 'package:flutter/material.dart';
import 'package:flutterfordev/Scene/FeedBackScreen/components/components.dart';
import 'package:flutterfordev/Style/_main.dart';
import 'package:flutterfordev/const/_const.dart';

class FeedBackScreen extends StatefulWidget {
  @override
  _FeedBackScreenState createState() => _FeedBackScreenState();
}

class _FeedBackScreenState extends State<FeedBackScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      height: displayHeight(context),
      width: displayWidth(context),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: ContainerDecoration.containerRadius,
              height: displayHeight(context) / 4,
              width: displayWidth(context) / 1,
              child: Column(
                children: [
                  Text(
                    contactme,
                    style: FontStyleText.info,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FeedBackButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
