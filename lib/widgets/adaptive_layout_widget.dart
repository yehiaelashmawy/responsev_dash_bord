import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tablateLayout,
    required this.desktopLayout,
  });
  final WidgetBuilder mobileLayout, tablateLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 800) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < 1200) {
          return tablateLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
