import 'package:flutter/material.dart';

class CustomBackgrounContainer extends StatelessWidget {
  const CustomBackgrounContainer({
    super.key,
    required this.child,
    this.padding,
  });
  final Widget child;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 20),
      decoration: ShapeDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: child,
    );
  }
}
