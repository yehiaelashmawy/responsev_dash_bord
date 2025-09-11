import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsev_dash_bord/widgets/income_section.dart';
import 'package:responsev_dash_bord/widgets/my_card_and_transaction_history_section.dart';

class DashbordMobileLayout extends StatelessWidget {
  const DashbordMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCardAndTransactionHistorySection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
