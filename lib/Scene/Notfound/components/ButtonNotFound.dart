import 'package:flutter/material.dart';
import 'package:flutterfordev/Style/_main.dart';
import 'package:flutterfordev/Widgets/customButton.dart';

class ButtonNotFound extends StatelessWidget {
  const ButtonNotFound({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonHeight: 64,
      buttonWidth: 128,
      buttonHoverColor: Color.fromRGBO(0, 0, 128, 2),
      buttonBackgroudColor: Color.fromRGBO(80, 63, 205, 0.8),
      splashColorButton: Colors.red[200],
      buttonShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: Colors.transparent,
        ),
      ),
      buttonBoxShadow: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 255, 0.5),
          blurRadius: 20,
          spreadRadius: 5,
          offset: Offset.fromDirection(20),
        ),
      ],
      onPressed: () => Navigator.pop(context),
      buttonBorderRadius: BorderRadius.circular(10),
      buttonText: 'Вернуться',
      customTextStyle: FontStyleText.textbackbutton,
    );
  }
}
