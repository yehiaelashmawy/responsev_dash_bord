import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/widgets/all_expenses_header.dart';
import 'package:responsev_dash_bord/widgets/all_expenses_item_list_view.dart';
import 'package:responsev_dash_bord/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgrounContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
