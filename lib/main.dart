import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/views/dashbord_view.dart';

void main() {
  runApp(const ResponsevDashBord());
}

class ResponsevDashBord extends StatelessWidget {
  const ResponsevDashBord({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: DashbordView());
  }
}
