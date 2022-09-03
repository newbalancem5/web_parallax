import 'package:flutter/material.dart';
import 'package:flutterfordev/Style/_main.dart';
import 'package:flutterfordev/const/_const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class FirstBlock extends StatefulWidget {
  @override
  _FirstBlockState createState() => _FirstBlockState();
}

class _FirstBlockState extends State<FirstBlock> {
  double offset = 0;

  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context),
      width: displayWidth(context),
      color: Colors.white,
      child: Column(
        children: [
          Center(
            child: SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: displayHeight(context) / 4),
                child: SizedBox(
                  child: Text(
                    socialme,
                    style: FontStyleText.title,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: displayHeight(context) / 6),
            child: SizedBox(),
          ),
          Center(
            child: SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: displayHeight(context) / 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: IconButton(
                        iconSize: 60,
                        splashRadius: 1,
                        splashColor: Colors.transparent,
                        icon: FaIcon(
                          FontAwesomeIcons.telegram,
                          size: 60,
                        ),
                        onPressed: () {
                          launchUrl(
                            Uri.parse(LinkSocial.telegram),
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: IconButton(
                        splashRadius: 1,
                        iconSize: 60,
                        icon: FaIcon(
                          FontAwesomeIcons.github,
                          size: 60,
                        ),
                        onPressed: () {
                          launchUrl(
                            Uri.parse(LinkSocial.github),
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: IconButton(
                        alignment: Alignment.center,
                        iconSize: 60,
                        splashRadius: 1,
                        icon: FaIcon(
                          FontAwesomeIcons.twitter,
                          size: 60,
                        ),
                        onPressed: () {
                          launchUrl(
                            Uri.parse(LinkSocial.twitter),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(top: 104),
              child: Icon(
                FontAwesomeIcons.arrowDown,
                size: 60,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
