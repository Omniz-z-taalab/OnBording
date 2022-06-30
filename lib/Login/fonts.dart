import 'package:flutter/material.dart';

class Font extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  const Font({Key? key,required this.text ,required this.textColor,required this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        child: Text(
          text,
          style: TextStyle(
              fontFamily: 'DMSans', color: textColor, fontSize: fontSize),

        ),
      ),
    );
  }
}
