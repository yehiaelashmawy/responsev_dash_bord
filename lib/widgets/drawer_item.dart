import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsev_dash_bord/models/drawer_item_model.dart';
import 'package:responsev_dash_bord/utils/app_style.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(drawerItemModel.title, style: AppStyle.styleRegular16),
    );
  }
}
