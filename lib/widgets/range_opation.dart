import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/utils/app_style.dart';

class RangeOpatin extends StatelessWidget {
  const RangeOpatin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text('Monthly', style: AppStyle.styleMedium16(context)),
          SizedBox(width: 18),
          Transform.rotate(
            angle: -1.5708,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xff064061),
            ),
          ),
        ],
      ),
    );
  }
}
