import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/models/all_expenses_item_model.dart';
import 'package:responsev_dash_bord/utils/app_style.dart';
import 'package:responsev_dash_bord/widgets/all_expenses_item_header.dart';

class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({super.key, required this.itemModel});

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
            // ignore: deprecated_member_use
            imageBackgroundColor: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
          ),
          SizedBox(height: 34),
          Text(
            itemModel.title,
            style: AppStyle.styleSemiBold16(
              context,
            ).copyWith(color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            itemModel.date,
            style: AppStyle.styleRegular14(
              context,
            ).copyWith(color: Color(0xffFAFAFA)),
          ),
          SizedBox(height: 16),
          Text(
            itemModel.price,
            style: AppStyle.styleSemiBold24(
              context,
            ).copyWith(color: Colors.white),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({super.key, required this.itemModel});

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
            imageBackgroundColor: null,
            imageColor: null,
          ),
          SizedBox(height: 34),
          Text(itemModel.title, style: AppStyle.styleSemiBold16(context)),
          SizedBox(height: 8),
          Text(itemModel.date, style: AppStyle.styleRegular14(context)),
          SizedBox(height: 16),
          Text(itemModel.price, style: AppStyle.styleSemiBold24(context)),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
