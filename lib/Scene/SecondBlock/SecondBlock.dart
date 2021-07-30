import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutterfordev/Style/Decoration.dart';
import 'package:flutterfordev/Style/FontStyle.dart';
import 'package:flutterfordev/Style/size.dart';
import 'package:flutterfordev/const/app_link.dart';

class SeconBlock extends StatefulWidget {
  @override
  _SeconBlockState createState() => _SeconBlockState();
}

class _SeconBlockState extends State<SeconBlock> {
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
              width: displayWidth(context) / 4,
              child: Column(
                children: [
                  Text(
                    'Если вы хотите разместить рекламу, вакансию или анонс то пишите мне.',
                    style: FontStyleText.info,
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        launch(LinkSocial.mytg);
                      },
                      child: Text(
                        "Связаться",
                        style: FontStyleText.text,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
