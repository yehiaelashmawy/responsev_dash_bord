import 'package:flutter/material.dart';

class CustomDotIndcator extends StatelessWidget {
  const CustomDotIndcator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActive ? 32 : 8,
      height: 8,
      decoration: ShapeDecoration(
        color: isActive ? Color(0xff4EB7F2) : Color(0xffE7E7E7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
      duration: Duration(milliseconds: 300),
    );
  }
}
