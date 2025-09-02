import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/widgets/custom_drawar.dart';

class DashbordDesktopLayout extends StatelessWidget {
  const DashbordDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [Expanded(child: CustomDrawar())]);
  }
}
