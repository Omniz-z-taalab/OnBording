import 'package:flutter/material.dart';
import 'package:onbording/OnBording/Description.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0,left: 20),
          child: Container(
            width: double.infinity,
            child: Image.asset('images/done.png'),),

        ),
        Description(descrip: 'Get Any Food form your favorite restaurant', fontSize: 25,fontwidth: FontWeight.bold, textColor: Colors.black),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(right: 18.0,left: 18),
          child: Description(descrip: 'We are constantly adding your favorite restaurant throughout the territory and around your area carefully selected', fontwidth: FontWeight.normal, fontSize: 13, textColor: Colors.grey),
        ),


      ],
    );
  }
}
