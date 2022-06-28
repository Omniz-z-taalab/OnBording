import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color colorButton;
  final BorderRadiusGeometry border;
  final VoidCallback ontap;
  const StartButton({Key? key,required this.text,required this.color,required this.colorButton,required this.border,required this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: border,
        ),child:  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
          child: MaterialButton(onPressed: () { ontap(); },
    height: 50,
    color: colorButton,
    child: Text(text,style: TextStyle(color: color),),),
        ));
  }
}
