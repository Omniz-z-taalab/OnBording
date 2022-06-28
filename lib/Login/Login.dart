import 'dart:async';

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:onbording/Login/googlebutton.dart';
import 'package:onbording/Login/underline.dart';
import 'package:onbording/Login/welcome%20text.dart';
import 'package:onbording/OnBording/Description.dart';
import 'package:onbording/OnBording/StartButton.dart';
import 'package:onbording/Register/Register.dart';
import 'package:onbording/defult/defultform.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
            width: double.infinity,
            child: Image.asset('images/imagelogin.png'),
          ),
          SizedBox(
            height: 20,
          ),
          WelcomeText(
              descrip: 'Welcome to Fashion Daily',
              fontwidth: FontWeight.normal,
              fontSize: 13,
              textColor: Colors.grey),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              InkWell(
                child: WelcomeText(
                    descrip: 'Sign in',
                    fontwidth: FontWeight.w500,
                    fontSize: 15,
                    textColor: Colors.black),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Register()));
                },
              ),
              SizedBox(
                width: 200,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: WelcomeText(
                      descrip: 'Help',
                      fontwidth: FontWeight.w400,
                      fontSize: 20,
                      textColor: Colors.lightBlue)),
              SizedBox(width: 7,),
              Icon(Icons.help,size: 25,color: Colors.lightBlue,),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          WelcomeText(
              descrip: 'Text Field Label',
              fontwidth: FontWeight.normal,
              fontSize: 13,
              textColor: Colors.grey),
          SizedBox(
            height: 7,
          ),
          DefaultFormField(),
          SizedBox(
            height: 40,
          ),
          StartButton(
            color: Colors.white,
            colorButton: Colors.blueAccent,
            border: BorderRadius.circular(5),
            text: 'Sign In',
            ontap: (){ Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Register()));},
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UnderLine(),
              Container(
                child: Text(
                  'Or',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              UnderLine(),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GoogleButton(
            color: Colors.lightBlue,
            colorButton: Colors.white,
            border: BorderRadius.circular(5),
            text: 'Sign with by Google',
          ),
          SizedBox(
            height: 20,
          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Doesent has an account?',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Colors.grey),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Register here',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.lightBlue,
                      fontSize: 15),
                )
              ]),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18.0, left: 18),
            child: Description(
              descrip:
                  'Use the application according to policy rules. Any Kinds of violations '
                  'will be subject to sanctions',
              fontwidth: FontWeight.normal,
              fontSize: 13,
              textColor: Colors.grey,
            ),
          ),
        ]),
      ),
    );
  }
}
