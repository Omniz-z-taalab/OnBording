import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onbording/OnBording/Description.dart';
import 'package:onbording/OnBording/MyFlatButton.dart';
import 'package:onbording/OnBording/StartButton.dart';
import 'package:onbording/OnBording/page1.dart';
import 'package:onbording/OnBording/page2.dart';
import 'package:onbording/OnBording/textlogo.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      MyflatButton(
        text: 'Skip',
        color: Colors.amber.shade50,
        onClicked: () {},
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        child: Logo(
          text: '7Krave',
        ),
      ),
      Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
      SizedBox(
        height:450,

        child: PageView(
          controller: _controller,
          children: [
            page1(),
            Page2(),
            page1(),
          ],
        ),),

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: WormEffect(
                dotColor: Colors.grey.shade200,
                  activeDotColor: Colors.amber.shade100,
                  dotHeight: 5,
                  dotWidth: 15,
                  spacing: 2),
            ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 35),
          child: StartButton(color: Colors.white, colorButton: Colors.teal.shade300,),
        )


    ]),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dont have an account?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(width: 5,),
              Text('Sign Up', style: TextStyle(
                fontWeight: FontWeight.bold,color: Colors.teal.shade300,fontSize: 15
              ),)
            ],
          )

        ])

    );
  }
}
