import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/widgets/custom_background_container.dart';
import 'package:responsev_dash_bord/widgets/income_chart.dart';
import 'package:responsev_dash_bord/widgets/income_details.dart';
import 'package:responsev_dash_bord/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgrounContainer(
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(height: 16),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: IncomeChart()),
                Expanded(child: IncomeDetails()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
