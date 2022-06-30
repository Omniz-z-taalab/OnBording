import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onbording/Login/Login.dart';
import 'package:onbording/OnBording/Description.dart';
import 'package:onbording/OnBording/MyFlatButton.dart';
import 'package:onbording/OnBording/StartButton.dart';
import 'package:onbording/OnBording/page1.dart';
import 'package:onbording/OnBording/page2.dart';
import 'package:onbording/OnBording/textlogo.dart';
import 'package:onbording/Register/Register.dart';
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
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyflatButton(
              text: 'Skip',
              color: Colors.amber.shade50,
              onClicked: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Logo(
              text: '7',
              textColor: Colors.amber.shade300, fontSize: 30,
            ),
          ),
          SizedBox(
            width: 1,
          ),
          Container(
            child: Logo(
              text: 'Krave',
              textColor: Colors.teal,
              fontSize: 30,
            ),
          ),
        ],
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
        SizedBox(
          height: 470,
          child: PageView(
            controller: _controller,
            children: [
              page1(),
              Page2(),
              page1(),
            ],
          ),
        ),
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
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 35),
          child: StartButton(
            color: Colors.white,
            colorButton: Colors.teal.shade300,
            border: BorderRadius.circular(15),
            text: 'Get Started',
            ontap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
        )
      ]),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Dont have an account?',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            child: Text(
              'Sign Up',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade300,
                  fontSize: 15),

            ),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Register()));
            },
          )
        ],
      )
    ]));
  }
}
