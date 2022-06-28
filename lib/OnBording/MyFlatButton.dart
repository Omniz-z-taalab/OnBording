import 'package:flutter/material.dart';

class MyflatButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onClicked;
  const MyflatButton({Key? key, required this.text, required this.color,this.textColor =Colors.black,required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:250.0,top: 40),
      child: Container(
         width: 65,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: MaterialButton(
            height: 50,
            color: color,
            onPressed: () {
              onClicked();
            },
            child: Text(text,style: TextStyle(color: textColor),),
          )),
    );
  }
}
