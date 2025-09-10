import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/utils/app_style.dart';
import 'package:responsev_dash_bord/widgets/range_opation.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Income', style: AppStyle.styleSemiBold20),
        RangeOpatin(),
      ],
    );
  }
}
