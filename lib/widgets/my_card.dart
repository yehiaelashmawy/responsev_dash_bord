import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsev_dash_bord/utils/app_images.dart';
import 'package:responsev_dash_bord/utils/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesCardBackground),
          ),
          color: Color(0XFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(right: 42, left: 31, top: 16),
              title: Text(
                'Name card',
                style: AppStyle.styleRegular16(
                  context,
                ).copyWith(color: Colors.white),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyle.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyle.styleSemiBold24(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '12/20 - 124',
                    style: AppStyle.styleRegular16(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),

            Flexible(child: SizedBox(height: 27)),
          ],
        ),
      ),
    );
  }
}
