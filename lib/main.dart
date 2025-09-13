import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/views/dashbord_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const ResponsevDashBord(),
    ),
    // const ResponsevDashBord(),
  );
}

class ResponsevDashBord extends StatelessWidget {
  const ResponsevDashBord({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: DashbordView(),
    );
  }
}
