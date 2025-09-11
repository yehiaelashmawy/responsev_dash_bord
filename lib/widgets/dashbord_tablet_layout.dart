import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/widgets/custom_drawar.dart';
import 'package:responsev_dash_bord/widgets/dashbord_mobile_layout.dart';

class DashbordTabletLayout extends StatelessWidget {
  const DashbordTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawar()),
        SizedBox(width: 32),
        Expanded(flex: 3, child: DashbordMobileLayout()),
        SizedBox(width: 32),
      ],
    );
  }
}
