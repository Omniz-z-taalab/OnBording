import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class DefaultFormField extends StatefulWidget {

  const DefaultFormField({Key? key}) : super(key: key);

  @override
  _DefaultFormFieldState createState() => _DefaultFormFieldState();
}

class _DefaultFormFieldState extends State<DefaultFormField> {
  final phone = TextEditingController();
  String countryName = '20';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20),
      child:

      TextFormField(
        controller: phone,
        maxLines: 1,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: "phone Number",
          hintStyle: TextStyle(color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(vertical: 18),
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade500),
          ),
          prefixIcon: Container(
            width: 40,
            child: Row(children: [
              InkWell(
                onTap: () {
                  showCountryPicker(
                    context: context,
                    showPhoneCode: true,
                    onSelect: (Country country) {
                      setState(() {
                        countryName = country.phoneCode;
                      });
                    },
                  );
                },
                child:Padding(padding: EdgeInsets.all(8),child: Text(
                    '+${countryName}',
                    style: TextStyle(
                        fontSize: 15,
                        wordSpacing: 10,
                        color: Colors.grey.shade700),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
