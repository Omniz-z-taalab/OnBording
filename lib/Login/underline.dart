import 'package:flutter/material.dart';

class UnderLine extends StatelessWidget {
  const UnderLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 10, top: 10,right: 10),
      child: SizedBox(
        width: 155.0,
        height: 1.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade300,
          ),
        ),
      ),
    );
  }
}
