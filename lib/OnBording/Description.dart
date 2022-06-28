import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String descrip;
  final FontWeight fontwidth;
  final double fontSize;
  const Description({Key? key,required this.descrip,required this.fontwidth,required this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18.0,left: 18),
      child: Container(
          child: Text(
            descrip,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: fontSize,fontWeight: fontwidth),


        ),
      ),
    );
  }
}
