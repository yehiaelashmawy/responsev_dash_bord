import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Color(0xffFAFAFA),
        filled: true,

        enabledBorder: buildBordr(),
        border: buildBordr(),
        focusedBorder: buildBordr().copyWith(
          borderSide: BorderSide(color: Color(0xff4EB7F2)),
        ),
      ),
    );
  }

  OutlineInputBorder buildBordr() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffFAFAFA)),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
