import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/utils/app_style.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyle.styleRegular16.copyWith(color: Color(0xffAAAAAA)),
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
