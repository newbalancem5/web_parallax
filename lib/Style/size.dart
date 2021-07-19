import 'package:flutter/material.dart';

Size displaySize(BuildContext context) {
  MediaQuery.of(context).size.toString();
  return MediaQuery.of(context).size;
}

double displayHeight(BuildContext context) {
  MediaQuery.of(context).size.height;
  return displaySize(context).height;
}

double displayWidth(BuildContext context) {
  MediaQuery.of(context).size.width;
  return displaySize(context).width;
}
