import 'package:circular_chart_flutter/circular_chart_flutter.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OverView extends StatefulWidget {
  const OverView({super.key});

  @override
  State<OverView> createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overview'),
      ),
      body: DayPreview(),
    );
  }
}

class DayPreview extends StatefulWidget {
  const DayPreview({super.key});

  @override
  State<DayPreview> createState() => _DayPreviewState();
}

class _DayPreviewState extends State<DayPreview> {
  final GlobalKey<AnimatedCircularChartState> _chartKey =
      GlobalKey<AnimatedCircularChartState>();
  List<CircularStackEntry> data = <CircularStackEntry>[
    CircularStackEntry(
      <CircularSegmentEntry>[
        CircularSegmentEntry(500.0, Colors.red[200], rankKey: 'Q1'),
      ],
      rankKey: 'Quarterly Profits',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(40),
            const Text(
              'Today',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const Gap(40),
            AnimatedCircularChart(
              key: _chartKey,
              size: const Size(300, 300),
              initialChartData: const <CircularStackEntry>[
                CircularStackEntry(
                  <CircularSegmentEntry>[
                    CircularSegmentEntry(
                      33.33,
                      Color.fromARGB(255, 0, 158, 255),
                      rankKey: 'completed',
                    ),
                    CircularSegmentEntry(
                      66.67,
                      Color.fromARGB(255, 160, 191, 244),
                      rankKey: 'remaining',
                    ),
                  ],
                  rankKey: 'progress',
                ),
              ],
              chartType: CircularChartType.Radial,
              percentageValues: true,
              holeLabel: '0 ML',
              labelStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            const Gap(80),
            IconButton(
                onPressed: () {
                  showModalBottomSheet<void>(
                    showDragHandle: true,
                    context: context,
                    builder: ((BuildContext context) {
                      return bottomContainer();
                    }),
                  );
                },
                icon: const Icon(
                  Icons.add,
                  size: 50,
                  color: Color.fromARGB(255, 74, 85, 162),
                ))
          ],
        ),
      ),
    );
  }

  Widget bottomContainer() {
    return Container(
      height: 200,
      width: double.infinity,
      color: const Color.fromARGB(255, 232, 237, 244),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('150 ML'),
                    IconButton(
                      iconSize: 40,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('200 ML'),
                    IconButton(
                      iconSize: 40,
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('250 ML'),
                    IconButton(
                      iconSize: 40,
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('300 ML'),
                    IconButton(
                      iconSize: 40,
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

