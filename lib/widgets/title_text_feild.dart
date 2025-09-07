import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/utils/app_style.dart';
import 'package:responsev_dash_bord/widgets/custom_text_feild.dart';

class TitleTextFeild extends StatelessWidget {
  const TitleTextFeild({super.key, required this.hint, required this.title});

  final String hint, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyle.styleMedium16),
        SizedBox(height: 12),
        CustomTextFeild(hint: hint),
      ],
    );
  }
}
