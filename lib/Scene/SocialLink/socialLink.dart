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
        SizedBox(
          child: Text('Telegram'),
        ),
        SizedBox(
          child: Text('Github'),
        ),
        SizedBox(
          child: Text('Twitter'),
        ),
        SizedBox(
          child: Text(' Vk'),
        ),
      ],
    );
  }
}
