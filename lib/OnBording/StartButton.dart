import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color colorButton;
  const StartButton({Key? key,this.text ='Get Started',required this.color,required this.colorButton,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),child: MaterialButton(onPressed: () {  },
    height: 50,
    color: colorButton,
    child: Text(text,style: TextStyle(color: color),),));
  }
}
