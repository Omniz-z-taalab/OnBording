import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class PasswordFormField extends StatefulWidget {
  const PasswordFormField({Key? key}) : super(key: key);

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20),
      child:  PasswordField(
        color: Colors.grey.shade700,
        passwordConstraint: r'.*[@$#.*].*',
        inputDecoration: PasswordDecoration(),
        hintText: 'must have special characters',
        border: PasswordBorder(

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade300,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(width: 1, color: Colors.red),
          ),
        ),
        errorMessage:
        'must contain special character either . * @ # \$',
      ),

    );
  }
}
