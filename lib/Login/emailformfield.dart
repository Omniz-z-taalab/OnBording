import 'package:flutter/material.dart';

class EmailFormField extends StatefulWidget {
  const EmailFormField({Key? key}) : super(key: key);

  @override
  State<EmailFormField> createState() => _EmailFormFieldState();
}

class _EmailFormFieldState extends State<EmailFormField> {
  var email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(right: 20.0, left: 20),
    child:
      TextFormField(
      controller: email,
      maxLines: 1,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Email",
        hintStyle: TextStyle(color: Colors.grey),
        contentPadding: EdgeInsets.symmetric(vertical: 18,horizontal: 10),
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
        validator: (Value
            ){
        if(Value == null || Value.isEmpty){
          return 'email is required';
        }
        },
      ),);
  }
}
