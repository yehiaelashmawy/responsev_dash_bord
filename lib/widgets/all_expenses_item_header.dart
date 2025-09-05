import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    required this.imageBackgroundColor,
    required this.imageColor,
  });
  final String image;
  final Color? imageBackgroundColor, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: imageBackgroundColor ?? Color(0xFFFAFAFA),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                imageColor ?? Color(0xff4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        Expanded(child: SizedBox()),
        Transform.rotate(
          angle: -1.5708 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor ?? Color(0xff064061),
          ),
        ),
      ],
    );
  }
}
