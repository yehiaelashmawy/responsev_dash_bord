import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/models/transaction_model.dart';
import 'package:responsev_dash_bord/utils/app_style.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
      child: ListTile(
        title: Text(transactionModel.title, style: AppStyle.styleSemiBold16),
        subtitle: Text(
          transactionModel.subTitle,
          style: AppStyle.styleRegular16.copyWith(color: Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionModel.mount,
          style: AppStyle.styleMedium20.copyWith(
            color: transactionModel.isWithdraw
                ? Color(0xffF3735E)
                : Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
