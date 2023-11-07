import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class DailyCheck extends StatefulWidget {
  const DailyCheck({super.key});

  @override
  State<DailyCheck> createState() => _DailyCheckState();
}

class _DailyCheckState extends State<DailyCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 232, 237, 244),
        appBar: AppBar(
          title: const Text('Daily check'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
          child: HeatMapCalendar(
            defaultColor: Colors.white,
            flexible: true,
            colorMode: ColorMode.color,
            datasets: {
              DateTime(2023, 11, 3): 1,
              DateTime(2023, 11, 4): 2,
              DateTime(2023, 11, 5): 2,
              DateTime(2023, 11, 6): 1,
              DateTime(2023, 11, 7): 2,
            },
            colorsets: const {
              1: Color.fromARGB(255, 211, 12, 12),
              2: Color.fromARGB(255, 1, 171, 7),
            },
          ),
        ));
  }
}
