import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/models/transaction_model.dart';
import 'package:responsev_dash_bord/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      subTitle: '13 Apr, 2022 ',
      mount: '\$20,129',
      isWithdraw: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      subTitle: '13 Apr, 2022 at 3:30 PM ',
      mount: '\$20,129',
      isWithdraw: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      subTitle: '13 Apr, 2022 at 3:30 PM ',
      mount: '\$20,129',
      isWithdraw: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return TransactionItem(transactionModel: items[index]);
      },
    );
  }
}
