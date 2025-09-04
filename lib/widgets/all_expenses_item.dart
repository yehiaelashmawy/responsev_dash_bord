import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/models/all_expenses_item_model.dart';
import 'package:responsev_dash_bord/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel});
  final AllExpensesItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(children: [AllExpensesItemHeader(image: itemModel.image)]),
    );
  }
}
