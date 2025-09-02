import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/utils/app_images.dart';
import 'package:responsev_dash_bord/widgets/user_info_lis_tile.dart';

class CustomDrawar extends StatelessWidget {
  const CustomDrawar({super.key});

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
        ],
      ),
    );
  }
}
