import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
        child: PieChart(getChartData(),),);
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        touchCallback: (p0, p1) {
         activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
         setState(() {

         });
        },
      ),
      sections: [
        PieChartSectionData(
          showTitle: false,
          value: 22,
          radius: activeIndex == 0 ? 30 : 20,
          color: const Color(0xffE2DECD)
        ),
        PieChartSectionData(
          showTitle: false,
          value: 20,
          radius: activeIndex == 1 ? 30 : 20,
          color: const Color(0xff064060)
        ),
        PieChartSectionData(
          showTitle: false,
          value: 25,
          radius: activeIndex == 2 ? 30 : 20,
          color: const Color(0xff4EB7F2)
        ),
        PieChartSectionData(
          showTitle: false,
          value: 40,
          radius: activeIndex == 3 ? 30 : 20,
          color: const Color(0xff208CC8)
        ),
      ]
    );
  }

/*
  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouchResponse) {
         activeIndex = pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
         setState(() {

         });
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          radius: activeIndex == 0 ? 30 : 20,
          showTitle: false,
          color: const Color(0xffE2DECD),
          value: 20,
        ),
        PieChartSectionData(
          radius: activeIndex == 1 ? 30 : 20,
          showTitle: false,
          color: const Color(0xff064060),
          value: 22,
        ),
        PieChartSectionData(
          radius: activeIndex == 2 ? 30 : 20,
          showTitle: false,
          color: const Color(0xff4EB7F2),
          value: 25,
        ),
        PieChartSectionData(
          radius: activeIndex == 3 ? 30 : 20,
          showTitle: false,
          color: const Color(0xff208CC8),
          value: 40,
        ),
      ]
    );
  }
*/
}
