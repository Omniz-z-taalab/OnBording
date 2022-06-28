

import 'package:flutter/material.dart';
import 'package:onbording/OnBording/Description.dart';

class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0,left: 20),
          child: Container(
            width: double.infinity,
            child: Image.asset('images/delivery.png'),),

        ),
        Description(descrip: 'Get food delivery to your doorstep asap', fontSize: 25,fontwidth: FontWeight.bold, textColor: Colors.black),
       SizedBox(height: 10,),
       Padding(
         padding: const EdgeInsets.only(right: 18.0,left: 18),
         child: Description(descrip: 'We have young and professional delivery team that will bring '
                'your food as soon as possible to your doorstep', fontwidth: FontWeight.normal, fontSize: 13, textColor: Colors.grey,),
       ),


      ],
    );
  }
}
