import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key key,
    @required this.buttonText,
    @required this.onPressed,
    this.customTextStyle,
    this.buttonBackgroudColor,
    this.buttonBorderRadius,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonBoxShadow,
  }) : super(key: key);

  final VoidCallback onPressed;
  final List buttonBoxShadow;
  final String buttonText;
  final Color buttonBackgroudColor;
  final BorderRadius buttonBorderRadius;
  final double buttonHeight;
  final double buttonWidth;
  final TextStyle customTextStyle;

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.buttonHeight,
      width: widget.buttonHeight,
      decoration: BoxDecoration(
        boxShadow: widget.buttonBoxShadow,
        color: widget.buttonBackgroudColor,
        borderRadius: widget.buttonBorderRadius ?? BorderRadius.circular(0),
      ),
      child: MaterialButton(
        onPressed: widget.onPressed,
        child: Text(
          widget.buttonText,
          style: widget.customTextStyle,
        ),
      ),
    );
  }
}
