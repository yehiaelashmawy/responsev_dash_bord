import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/widgets/all_expenses.dart';
import 'package:responsev_dash_bord/widgets/custom_drawar.dart';

class DashbordDesktopLayout extends StatelessWidget {
  const DashbordDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawar()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Column(children: [Expanded(child: AllExpenses())]),
        ),
      ],
    );
  }
}
