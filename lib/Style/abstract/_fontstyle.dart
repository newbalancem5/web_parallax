import 'package:flutter/material.dart';

/// Custom color for text
abstract class FontStyleText {
  static const TextStyle title = TextStyle(
    fontFamily: 'Fixedsys',
    color: Colors.black,
    fontSize: 25,
    inherit: false,
  );

  static const TextStyle info = TextStyle(
    fontFamily: 'Fixedsys',
    color: Colors.black,
    fontSize: 20,
    inherit: false,
  );

  static const TextStyle text = TextStyle(
    fontFamily: 'Fixedsys',
    color: Colors.black,
    fontSize: 17,
    inherit: false,
  );

  static const TextStyle textbackbutton = TextStyle(
    fontFamily: 'Fixedsys',
    color: Colors.white,
    fontSize: 17,
    inherit: false,
  );
}
