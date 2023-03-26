import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BarChart(BarChartData(
          borderData: FlBorderData(
              border: const Border(
            top: BorderSide.none,
            right: BorderSide.none,
            left: BorderSide(width: 1),
            bottom: BorderSide(width: 1),
          )),
          groupsSpace: 10,

          // add bars
          barGroups: [
            BarChartGroupData(x: 24, barRods: [
              BarChartRodData(toY: 2000, width: 12, color: Colors.amber),
            ]),
            BarChartGroupData(x: 25, barRods: [
              BarChartRodData(toY: 5000, width: 15, color: Colors.amber),
            ]),
            BarChartGroupData(x: 26, barRods: [
              BarChartRodData(toY: 3000, width: 15, color: Colors.amber),
            ]),
            BarChartGroupData(x: 27, barRods: [
              BarChartRodData(toY: 6000, width: 15, color: Colors.amber),
            ]),
            BarChartGroupData(x: 28, barRods: [
              BarChartRodData(toY: 4000, width: 15, color: Colors.amber),
            ]),
            BarChartGroupData(x: 29, barRods: [
              BarChartRodData(toY: 7000, width: 15, color: Colors.amber),
            ]),
            BarChartGroupData(x: 30, barRods: [
              BarChartRodData(toY: 4300, width: 15, color: Colors.amber),
            ]),
          ])),
    );
  }
}
