import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsev_dash_bord/models/drawer_item_model.dart';
import 'package:responsev_dash_bord/utils/app_style.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyle.styleRegular16(context),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(drawerItemModel.title, style: AppStyle.styleBold16(context)),
      trailing: Container(
        width: 3.27,
        decoration: BoxDecoration(color: Color(0xff4EB7F2)),
      ),
    );
  }
}
