import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/utils/size_config.dart';
import 'package:responsev_dash_bord/widgets/income_chart.dart';
import 'package:responsev_dash_bord/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width <= 1745
        ? Expanded(child: IncomeChart())
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
