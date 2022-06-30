import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  const Logo({Key? key,required this.text ,required this.textColor,required this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      child: Text(
        text,
        style: TextStyle(
            fontFamily: 'Ubuntu', color: textColor, fontSize: fontSize),

      ),
    );
  }
}
