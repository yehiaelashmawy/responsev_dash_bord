import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/utils/app_style.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? -1.3 : null,
          titleStyle: AppStyle.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 0 ? null : Colors.white),
          value: 20,
          title: activeIndex == 0 ? 'Product royalti' : '20%',
          color: Color(0xff064061),
          radius: activeIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 1.3 : null,
          titleStyle: AppStyle.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 1 ? null : Colors.white),
          title: activeIndex == 1 ? 'Design product' : '25%',
          value: 25,
          color: Color(0xff4EB7F2),
          radius: activeIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.3 : null,
          titleStyle: AppStyle.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 2 ? null : Colors.white),
          title: activeIndex == 2 ? 'Design service' : '40%',
          value: 40,
          color: Color(0xff208CC8),
          radius: activeIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.3 : null,
          titleStyle: AppStyle.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 3 ? null : Colors.white),
          title: activeIndex == 3 ? 'Other' : '22%',
          value: 22,
          color: Color(0xffE2DECD),
          radius: activeIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
