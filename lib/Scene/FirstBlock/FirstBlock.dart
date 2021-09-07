import 'package:flutter/material.dart';
import 'package:flutterfordev/Style/_main.dart';
import 'package:flutterfordev/const/_const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:flutterfordev/domain/api_clients/api_client.dart';

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
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(top: displayHeight(context) / 4),
                child: Container(
                  child: Text(
                    'Где нас можно почитать.',
                    style: FontStyleText.title,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: displayHeight(context) / 6),
            child: Container(
                // child: TeLegramStatsPage(),
                ),
          ),
          Center(
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(top: displayHeight(context) / 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // height: displayHeight(context) / 2,
                  children: [
                    Container(
                      // orders: ' order-md-1',
                      // offsets: 'offset-xl-3',
                      // fit: FlexFit.tight,
                      // absoluteSizes: true,
                      // sizes: 'col-1 col-12',
                      child: IconButton(
                        iconSize: 60,
                        splashRadius: 1,
                        splashColor: Colors.transparent,
                        icon: FaIcon(
                          FontAwesomeIcons.telegram,
                          size: 60,
                        ),
                        onPressed: () {
                          launch(LinkSocial.telegram);
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      // offsets: 'offset-0',
                      // orders: ' order-sm-2',
                      // fit: FlexFit.tight,
                      // absoluteSizes: true,
                      // sizes: 'col-1',
                      child: IconButton(
                        splashRadius: 1,
                        iconSize: 60,
                        icon: FaIcon(
                          FontAwesomeIcons.github,
                          size: 60,
                        ),
                        onPressed: () {
                          launch(LinkSocial.github);
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      // offsets: 'offset-0',
                      // orders: ' order-2',
                      // fit: FlexFit.loose,
                      // absoluteSizes: true,
                      // sizes: 'col-1 col-sm ',
                      child: IconButton(
                        alignment: Alignment.center,
                        iconSize: 60,
                        splashRadius: 1,
                        icon: FaIcon(
                          FontAwesomeIcons.twitter,
                          size: 60,
                        ),
                        onPressed: () {
                          launch(LinkSocial.twitter);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 104),
              child: Icon(
                FontAwesomeIcons.arrowAltCircleDown,
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
