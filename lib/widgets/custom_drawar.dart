import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/models/drawer_item_model.dart';
import 'package:responsev_dash_bord/utils/app_images.dart';
import 'package:responsev_dash_bord/widgets/drawer_item.dart';
import 'package:responsev_dash_bord/widgets/user_info_lis_tile.dart';

class CustomDrawar extends StatelessWidget {
  const CustomDrawar({super.key});

  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashbord),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesMyTransaction),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletAcount),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
          ),
          SizedBox(height: 8),
          ListView.builder(
            itemCount: items.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: DrawerItem(drawerItemModel: items[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
