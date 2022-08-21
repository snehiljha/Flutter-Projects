import 'package:flutter/material.dart';
import 'constants.dart';

class Button extends StatelessWidget {
  Button({this.onPress, this.text});

  final Function onPress;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        color: bottomColor,
        margin: EdgeInsets.only(top: 15.0),
        width: double.infinity,
        height: bottomHeight,
      ),
    );
  }
}
