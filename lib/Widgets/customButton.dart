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
    this.buttonFocusColor,
    this.buttonHoverColor,
    this.splashColorButton,
    this.buttonShape,
  }) : super(key: key);

  final VoidCallback onPressed;
  final List<BoxShadow> buttonBoxShadow;
  final Color buttonHoverColor;
  final String buttonText;
  final Color buttonBackgroudColor;
  final BorderRadius buttonBorderRadius;
  final double buttonHeight;
  final double buttonWidth;
  final TextStyle customTextStyle;
  final Color buttonFocusColor;
  final Color splashColorButton;
  final ShapeBorder buttonShape;

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.buttonHeight,
      width: widget.buttonWidth,
      decoration: BoxDecoration(
        boxShadow: widget.buttonBoxShadow,
        color: widget.buttonBackgroudColor,
        borderRadius: widget.buttonBorderRadius,
      ),
      child: MaterialButton(
        splashColor: widget.splashColorButton ?? Colors.red,
        shape: widget.buttonShape,
        focusColor: widget.buttonFocusColor,
        hoverColor: widget.buttonHoverColor,
        onPressed: widget.onPressed,
        child: Container(
          child: Text(
            widget.buttonText,
            style: widget.customTextStyle,
          ),
        ),
      ),
    );
  }
}
