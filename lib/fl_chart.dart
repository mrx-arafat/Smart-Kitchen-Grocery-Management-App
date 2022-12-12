import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample2 extends StatefulWidget {
  const LineChartSample2({super.key});

  @override
  State<LineChartSample2> createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart Kitchen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: BarChart(BarChartData(
            borderData: FlBorderData(
                border: const Border(
              top: BorderSide.none,
              right: BorderSide.none,
              left: BorderSide(width: 1),
              bottom: BorderSide(width: 1),
            )),
            groupsSpace: 10,
            barGroups: [
              BarChartGroupData(x: 1, barRods: [
                BarChartRodData(
                    fromY: 0, toY: 10, width: 15, color: Colors.amber),
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(
                    fromY: 0, toY: 20, width: 15, color: Colors.amber),
              ]),
              BarChartGroupData(x: 3, barRods: [
                BarChartRodData(
                    fromY: 0, toY: 15, width: 15, color: Colors.amber),
              ]),
              BarChartGroupData(x: 4, barRods: [
                BarChartRodData(
                    fromY: 0, toY: 30, width: 15, color: Colors.amber),
              ]),
              BarChartGroupData(x: 5, barRods: [
                BarChartRodData(
                    fromY: 0, toY: 10, width: 15, color: Colors.amber),
              ]),
              BarChartGroupData(x: 6, barRods: [
                BarChartRodData(
                    fromY: 0, toY: 10, width: 15, color: Colors.amber),
              ]),
              BarChartGroupData(x: 7, barRods: [
                BarChartRodData(
                    fromY: 0, toY: 10, width: 15, color: Colors.amber),
              ]),
            ])),
      ),
    );
  }
}
