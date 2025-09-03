import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/widgets/adaptive_layout_widget.dart';
import 'package:responsev_dash_bord/widgets/dashbord_desktop_layout.dart';

class DashbordView extends StatelessWidget {
  const DashbordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => SizedBox(),
        tablateLayout: (context) => SizedBox(),
        desktopLayout: (context) => DashbordDesktopLayout(),
      ),
    );
  }
}
