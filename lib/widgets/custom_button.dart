import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor,
    this.textColor,
    this.text,
  });
  final Color? backgroundColor, textColor;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
          elevation: 0,
          backgroundColor: backgroundColor ?? Color(0xff4EB7F2),
        ),
        onPressed: () {},
        child: Text(
          text ?? 'Send Money',
          style: AppStyle.styleSemiBold18(context).copyWith(color: textColor),
        ),
      ),
    );
  }
}
