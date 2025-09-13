import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/utils/app_style.dart';
import 'package:responsev_dash_bord/widgets/transaction_history_header.dart';
import 'package:responsev_dash_bord/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 20),
        Text(
          '13 April 2022',
          style: AppStyle.styleMedium16(
            context,
          ).copyWith(color: Color(0xffAAAAAA)),
        ),
        SizedBox(height: 16),
        TransactionHistoryListView(),
      ],
    );
  }
}
