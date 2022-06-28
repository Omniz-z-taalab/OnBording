import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String text;
  const Logo({Key? key,required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      child: Text(
        text,
        style: TextStyle(
            fontFamily: 'Ubuntu', color: Colors.teal, fontSize: 30),

      ),
    );
  }
}
