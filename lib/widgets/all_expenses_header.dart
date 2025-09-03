import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/utils/app_style.dart';
import 'package:responsev_dash_bord/widgets/range_opation.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('All Expenses', style: AppStyle.styleSemiBold20),
        Expanded(child: SizedBox()),
        RangeOpatin(),
      ],
    );
  }
}
