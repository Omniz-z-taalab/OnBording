import 'package:flutter/material.dart';
import 'package:onbording/Login/emailformfield.dart';
import 'package:onbording/Login/fonts.dart';
import 'package:onbording/Login/googlebutton.dart';
import 'package:onbording/Login/passwordformfeild.dart';
import 'package:onbording/Login/underline.dart';
import 'package:onbording/Login/welcome%20text.dart';
import 'package:onbording/OnBording/Description.dart';
import 'package:onbording/OnBording/StartButton.dart';
import 'package:onbording/defult/defultform.dart';
import 'package:passwordfield/passwordfield.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  bool invisible = true;
  void inContact(TapDownDetails details) {
    setState(() {
      invisible = false;
    });
  }

  void outContact(TapUpDetails details) {
    setState(() {
      invisible=true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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
                  fontSize: 12,
                  textColor: Colors.grey.shade600),
              SizedBox(
                height: 15,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Font(text: 'Register', textColor: Colors.black, fontSize: 30),
                  SizedBox(
                    width: 130,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: WelcomeText(
                          descrip: 'Help',
                          fontwidth: FontWeight.w400,
                          fontSize: 15,
                          textColor: Colors.lightBlue)),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(
                    Icons.help,
                    size: 20,
                    color: Colors.lightBlue,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              WelcomeText(
                  descrip: 'Email',
                  fontwidth: FontWeight.normal,
                  fontSize: 15,
                  textColor: Colors.black),
              SizedBox(
                height: 7,
              ),
              EmailFormField(),
              SizedBox(
                height: 20,
              ),
              WelcomeText(
                  descrip: 'Phone Number',
                  fontwidth: FontWeight.normal,
                  fontSize: 15,
                  textColor: Colors.black),
              SizedBox(
                height: 7,
              ),
              DefaultFormField(),
              SizedBox(
                height: 20,
              ),
              WelcomeText(
                  descrip: 'Password',
                  fontwidth: FontWeight.normal,
                  fontSize: 15,
                  textColor: Colors.black),
              SizedBox(
                height: 7,
              ),

              PasswordFormField(),
              SizedBox(
                height: 20,
              ),
              StartButton(
                color: Colors.white,
                colorButton: Colors.blueAccent,
                border: BorderRadius.circular(5),
                text: 'Register',
                ontap: () {
                  if(_formKey.currentState!.validate()){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );}
                },
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
                      'Has any account?',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Sign in here',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.lightBlue,
                          fontSize: 15),
                    )
                  ]),
              SizedBox(
                height: 20,
              ),
              Description(
                descrip: 'By registering your account,'
                    ' you are agree to our',
                fontwidth: FontWeight.normal,
                fontSize: 13,
                textColor: Colors.grey,
              ),
              SizedBox(
                height: 5,
              ),
              Description(
                descrip: 'terms and condition',
                fontwidth: FontWeight.normal,
                fontSize: 13,
                textColor: Colors.lightBlue,
              ),
            ],
          ),
        ),
      ),


    );
  }
}
