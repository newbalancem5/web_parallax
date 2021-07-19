import 'package:flutter/material.dart';

class SocialLink extends StatefulWidget {
  // const SocialLink({ Key? key }) : super(key: key);

  @override
  _SocialLinkState createState() => _SocialLinkState();
}

class _SocialLinkState extends State<SocialLink> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text('Telegram'),
        ),
        Container(
          child: Text('Github'),
        ),
        Container(
          child: Text('Twitter'),
        ),
        Container(
          child: Text(' Vk'),
        ),
      ],
    );
  }
}
