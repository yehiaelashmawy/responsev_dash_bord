import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/widgets/adaptive_layout_widget.dart';
import 'package:responsev_dash_bord/widgets/dashbord_desktop_layout.dart';
import 'package:responsev_dash_bord/widgets/dashbord_mobile_layout.dart';
import 'package:responsev_dash_bord/widgets/dashbord_tablet_layout.dart';

class DashbordView extends StatelessWidget {
  const DashbordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24),
          child: DashbordMobileLayout(),
        ),
        tablateLayout: (context) => DashbordTabletLayout(),
        desktopLayout: (context) => DashbordDesktopLayout(),
      ),
    );
  }
}
