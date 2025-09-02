import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsev_dash_bord/utils/app_style.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(image),
      title: Text(title, style: AppStyle.styleSemiBold16),
      subtitle: Text(subTitle, style: AppStyle.styleRegular12),
    );
  }
}
