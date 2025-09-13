import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/models/item_details_model.dart';
import 'package:responsev_dash_bord/utils/app_style.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyle.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyle.styleMedium16(
          context,
        ).copyWith(color: Color(0xff208CC8)),
      ),
    );
  }
}
