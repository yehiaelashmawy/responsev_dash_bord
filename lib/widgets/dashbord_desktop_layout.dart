import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsev_dash_bord/widgets/custom_drawar.dart';
import 'package:responsev_dash_bord/widgets/income_section.dart';
import 'package:responsev_dash_bord/widgets/my_card_and_transaction_history_section.dart';

class DashbordDesktopLayout extends StatelessWidget {
  const DashbordDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawar()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: AllExpensesAndQuickInvoiceSection()),
        SizedBox(width: 24),
        Expanded(
          child: Column(
            children: [
              SizedBox(height: 40),
              MyCardAndTransactionHistorySection(),
              SizedBox(height: 24),
              Expanded(child: IncomeSection()),
            ],
          ),
        ),
      ],
    );
  }
}
