import 'package:flutter/material.dart';
import 'package:flutterfordev/Style/_main.dart';
import 'package:flutterfordev/domain/api_clients/api_client.dart';
import 'package:flutterfordev/domain/entity/telegraminf.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutterfordev/const/_const.dart';

class SecondBlock extends StatefulWidget {
  @override
  _SecondBlockState createState() => _SecondBlockState();
}

class _SecondBlockState extends State<SecondBlock> {
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
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        launch(LinkSocial.mytg);
                      },
                      child: Text(
                        callme,
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
