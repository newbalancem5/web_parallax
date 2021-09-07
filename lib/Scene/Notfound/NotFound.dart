import 'package:flutter/material.dart';
import 'package:flutterfordev/Style/abstract/_fontstyle.dart';
import 'package:flutterfordev/Style/helpers/_size.dart';
import 'package:flutterfordev/const/_images.dart';

class NotFoundPage extends StatefulWidget {
  @override
  _NotFoundPageState createState() => _NotFoundPageState();
}

class _NotFoundPageState extends State<NotFoundPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                AppImages.ffdlogo,
                width: displayWidth(context) / 2,
                height: displayHeight(context) / 2,
              ),
            ],
          ),
          Center(
            child: SizedBox(
              child: Text(
                'Ой.. Кажется вы не туда попали.',
                style: FontStyleText.title,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
