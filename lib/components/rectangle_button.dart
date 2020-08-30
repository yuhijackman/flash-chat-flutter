import 'package:flutter/material.dart';

class RectangleButton extends StatelessWidget {
  final Color bgColor;
  final String text;
  final Function pressed;

  RectangleButton({this.bgColor, this.text, this.pressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: bgColor,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: () {
            pressed();
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
            style: TextStyle(color:  Colors.white),
          ),
        ),
      ),
    );
  }
}