import 'package:flutter/material.dart';
import 'package:web_parallax/Style/FontStyle.dart';
import 'package:web_parallax/Style/size.dart';

class SeconBlock extends StatefulWidget {
  @override
  _SeconBlockState createState() => _SeconBlockState();
}

class _SeconBlockState extends State<SeconBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context),
      width: displayWidth(context),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: displayHeight(context) / 4,
              width: displayWidth(context) / 4,
              child: Column(
                children: [
                  Text(
                    'Если вы хотите разместить рекламу, вакансию или анонс то пишите мне',
                    style: FontStyleText.text,
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                      onPressed: () {}, child: Text("следующая страница"))
                ],
              ),
            ),
            Container(
              child: Text('2'),
            ),
            Container(
              child: Text('3'),
            ),
            Container(
              child: Text('4'),
            ),
          ],
        ),
      ),
    );
  }
}
