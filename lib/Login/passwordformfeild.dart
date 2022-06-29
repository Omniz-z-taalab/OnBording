import 'package:flutter/material.dart';

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
      child: TextFormField(
        obscureText: true,
        controller: password,
        maxLines: 1,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade500),
          ),
        ),
      ),
    );
  }
}
