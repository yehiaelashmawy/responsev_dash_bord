import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/widgets/custom_background_container.dart';
import 'package:responsev_dash_bord/widgets/my_card_secation.dart';
import 'package:responsev_dash_bord/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgrounContainer(
      child: Column(
        children: [
          MyCardSecation(),
          Divider(height: 40, color: Color(0xffF1F1F1)),
          TransactionHistory(),
        ],
      ),
    );
  }
}
