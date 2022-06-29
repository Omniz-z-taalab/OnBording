import 'package:flutter/material.dart';
import 'package:onbording/Login/emailformfield.dart';
import 'package:onbording/Login/googlebutton.dart';
import 'package:onbording/Login/passwordformfeild.dart';
import 'package:onbording/Login/underline.dart';
import 'package:onbording/Login/welcome%20text.dart';
import 'package:onbording/OnBording/Description.dart';
import 'package:onbording/OnBording/StartButton.dart';
import 'package:onbording/defult/defultform.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                fontSize: 13,
                textColor: Colors.grey),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                InkWell(
                  child: WelcomeText(
                      descrip: 'Register',
                      fontwidth: FontWeight.w600,
                      fontSize: 25,
                      textColor: Colors.black),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                ),
                SizedBox(
                  width: 150,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: WelcomeText(
                        descrip: 'Help',
                        fontwidth: FontWeight.w400,
                        fontSize: 20,
                        textColor: Colors.lightBlue)),
                SizedBox(
                  width: 7,
                ),
                Icon(
                  Icons.help,
                  size: 25,
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
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
                    descrip:
                        'By registering your account,'
                            ' you are agree to our',
                    fontwidth: FontWeight.normal,
                    fontSize: 13,
                    textColor: Colors.grey,
                  ),
                SizedBox(
                  height: 5,
                ),
                Description(
                  descrip:
                  'terms and condition',
                  fontwidth: FontWeight.normal,
                  fontSize: 13,
                  textColor: Colors.lightBlue,
                ),

          ],
        ),
      ),
    );
  }
}
