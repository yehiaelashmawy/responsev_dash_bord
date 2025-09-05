import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/models/all_expenses_item_model.dart';
import 'package:responsev_dash_bord/widgets/inactive_and_active_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.itemModel,
    required this.isSeclected,
  });
  final AllExpensesItemModel itemModel;
  final bool isSeclected;
  @override
  Widget build(BuildContext context) {
    return isSeclected
        ? ActiveExpensesItem(itemModel: itemModel)
        : InActiveExpensesItem(itemModel: itemModel);
  }
}
