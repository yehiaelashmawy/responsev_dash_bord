import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/widgets/custom_background_container.dart';
import 'package:responsev_dash_bord/widgets/latest_transaction.dart';
import 'package:responsev_dash_bord/widgets/quick_invice_header.dart';
import 'package:responsev_dash_bord/widgets/title_text_feild.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgrounContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransaction(),
          Divider(height: 48, color: Color(0xffF1F1F1)),
          TitleTextFeild(title: 'Customer name', hint: 'Type customer name'),
        ],
      ),
    );
  }
}
