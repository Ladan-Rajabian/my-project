import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DailyCheck extends StatefulWidget {
  const DailyCheck({super.key});

  @override
  State<DailyCheck> createState() => _DailyCheckState();
}

class _DailyCheckState extends State<DailyCheck> {
  Map<DateTime, int> dailyCheckData = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Daily check'),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
          future: loadDailyCheckData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                dailyCheckData = snapshot.data!.map((key, value) {
                  int test = value ? 1 : 0;
                  DateTime realTime = DateTime(
                    DateTime.parse(key).year,
                    DateTime.parse(key).month,
                    DateTime.parse(key).day,
                  );
                  return MapEntry(realTime, test);
                });
              }

              return Center(
                child: HeatMapCalendar(
                    datasets: dailyCheckData,
                    colorsets: const {1: Colors.green}),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }

  Future<Map<String, dynamic>> loadDailyCheckData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? dailyCheckString = prefs.getString('dailyCheck');
    return dailyCheckString != null
        ? Map<String, dynamic>.from(json.decode(dailyCheckString))
        : {};
  }
}
