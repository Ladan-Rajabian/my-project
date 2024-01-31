import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OverView extends StatefulWidget {
  final double goalLiter;
  const OverView({Key? key, required this.goalLiter}) : super(key: key);

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
      body: DayPreview(goalLiter: widget.goalLiter),
    );
  }
}

class DayPreview extends StatefulWidget {
  final double goalLiter;
  const DayPreview({Key? key, required this.goalLiter}) : super(key: key);

  @override
  State<DayPreview> createState() => _DayPreviewState();
}

class _DayPreviewState extends State<DayPreview> {
  int reached = 0;
  Future<void> addWater(int amount) async {
    setState(() {
      reached += amount;
    });
    await _saveReachedGoal(reached);
  }

  Future<void> _saveReachedGoal(int reachedGoal) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('reachedGoal', reachedGoal);
  }

  @override
  void initState() {
    super.initState();
    _loadReachedGoal();
  }

  Future<void> _loadReachedGoal() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      reached = prefs.getInt('reachedGoal') ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(40),
            Text('today goal: ${widget.goalLiter} L',
                style: const TextStyle(fontSize: 24)),
            const Gap(50),
            Text(
              'you reached: $reached mL',
              style: const TextStyle(fontSize: 20),
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
                      onPressed: () {
                        addWater(150);
                      },
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
                      onPressed: () {
                        addWater(200);
                      },
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
                      onPressed: () {
                        addWater(250);
                      },
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
                      onPressed: () {
                        addWater(300);
                      },
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
