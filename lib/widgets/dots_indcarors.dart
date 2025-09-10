import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/widgets/custom_dot.dart';

class DotsIndcarors extends StatelessWidget {
  const DotsIndcarors({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CustomDotIndcator(isActive: index == currentPageIndex),
        ),
      ),
    );
  }
}
