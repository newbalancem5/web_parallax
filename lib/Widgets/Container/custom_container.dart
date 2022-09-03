import 'package:flutter/material.dart';
import 'package:flutterfordev/Style/helpers/_size.dart';

// class ContainersStyle {
//   final Color color;
//   final double width;
//   final double height;
//   final EdgeInsets padding;
//   final TextStyle textStyle;
//   final TextStyle textStyleTitle;
//   final BorderRadius borderRadius;
//   final ShapeBorder shape;
//   final bool textOnly;
//   final bool outline;
//   final CrossAxisAlignment crossAxisAlignment;

//   const ContainersStyle({
//     this.shape = const RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(Radius.circular(20))),
//     this.textStyle,
//     this.textStyleTitle,
//     this.textOnly = false,
//     this.color = Colors.green,
//     this.width = 325,
//     this.height = 260,
//     this.borderRadius = const BorderRadius.all(Radius.circular(20)),
//     this.padding = const EdgeInsets.only(top: 26),
//     this.outline = false,
//     this.crossAxisAlignment = CrossAxisAlignment.center,
//   });
// }

class Containers extends StatelessWidget {
  const Containers({
    this.children,
    this.width,
    this.height,
    this.size,
    this.color,
    this.borderRadius,
    this.text,
    this.inputText,
  });

  final Widget children;
  final double width;
  final double height;
  final double size;
  final double text;
  final Color color;
  final double borderRadius;
  final String inputText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: displayHeight(context) / 5,
      height: displayHeight(context) / 5,
      child: Text(
        inputText,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
