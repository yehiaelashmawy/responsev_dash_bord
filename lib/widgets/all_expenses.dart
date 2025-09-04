import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/models/all_expenses_item_model.dart';
import 'package:responsev_dash_bord/utils/app_images.dart';
import 'package:responsev_dash_bord/widgets/all_expenses_header.dart';
import 'package:responsev_dash_bord/widgets/all_expenses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        children: [
          AllExpensesHeader(),
          AllExpensesItem(
            itemModel: AllExpensesItemModel(
              image: Assets.imagesIncome,
              title: 'Income',
              date: 'April 2022',
              price: r'$20,129',
            ),
          ),
        ],
      ),
    );
  }
}
