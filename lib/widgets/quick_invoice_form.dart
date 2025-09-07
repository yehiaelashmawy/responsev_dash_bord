import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/widgets/custom_button.dart';
import 'package:responsev_dash_bord/widgets/title_text_feild.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextFeild(
                hint: 'Type customer name',
                title: 'Customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextFeild(
                hint: 'Type customer email',
                title: 'Customer Email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextFeild(
                hint: 'Type customer name',
                title: 'Item name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextFeild(hint: 'USD', title: 'Item mount'),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Add more details',
                backgroundColor: Colors.transparent,
                textColor: Color(0xff4EB7F2),
              ),
            ),
            SizedBox(width: 16),
            Expanded(child: CustomButton()),
          ],
        ),
      ],
    );
  }
}
