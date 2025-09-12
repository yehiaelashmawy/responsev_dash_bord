import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/utils/size_config.dart';
import 'package:responsev_dash_bord/widgets/adaptive_layout_widget.dart';
import 'package:responsev_dash_bord/widgets/custom_drawar.dart';
import 'package:responsev_dash_bord/widgets/dashbord_desktop_layout.dart';
import 'package:responsev_dash_bord/widgets/dashbord_mobile_layout.dart';
import 'package:responsev_dash_bord/widgets/dashbord_tablet_layout.dart';

class DashbordView extends StatefulWidget {
  const DashbordView({super.key});

  @override
  State<DashbordView> createState() => _DashbordViewState();
}

class _DashbordViewState extends State<DashbordView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: Color(0xff4EB7F2),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
            )
          : null,
      backgroundColor: Color(0xffF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? CustomDrawar()
          : null,
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
