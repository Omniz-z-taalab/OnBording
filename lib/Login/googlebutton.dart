import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color colorButton;
  final BorderRadiusGeometry border;
  const GoogleButton({Key? key,required this.text,required this.color,required this.colorButton,required this.border}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),child:
      Container(
        width: double.infinity,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.lightBlue),
          borderRadius: border,
        ),child: MaterialButton(onPressed: () {  },
      height: 50,
      color: colorButton,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/google.png'),
          SizedBox(width: 7,),
          Text(text,style: TextStyle(color: color),),
        ],
      ),),),);
  }
}
