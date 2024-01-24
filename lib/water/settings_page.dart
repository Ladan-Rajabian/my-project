import 'package:flutter/material.dart';

import 'package:flutter_untiteld/widgets/healthy_dropdowm_menu.dart';
import 'package:flutter_untiteld/widgets/healthy_switch.dart';

import 'package:gap/gap.dart';

const List<String> listLiter = <String>[
  'None',
  '1 L',
  '1.5 L',
  '2 L',
  '2.5 L',
  '3 L'
];

const List<String> listHour = <String>[
  'None',
  '1 H',
  '2 H',
  '3 H',
  '4 H',
];

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  TimeOfDay startTime = const TimeOfDay(hour: 22, minute: 0);
  TimeOfDay endTime = const TimeOfDay(hour: 9, minute: 0);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Gap(50),
            Row(
              children: [
                const Gap(10),
                const Text(
                  'Reminder',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: size.width * 0.54,
                ),
                const HealthySwitch(),
              ],
            ),
            const Gap(40),
            Row(
              children: [
                const Gap(10),
                const Text(
                  'Target Liter',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: size.width * 0.30),
                const HealthyDropdownMenu(
                  list: listLiter,
                )
              ],
            ),
            const Gap(40),
            Row(
              children: [
                const Gap(10),
                const Text(
                  'Reminder every',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: size.width * 0.22,
                ),
                const HealthyDropdownMenu(list: listHour)
              ],
            ),
            const Gap(50),
            const Text(
              'Night mode',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const Gap(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Start Time: ${startTime.format(context)}'),
                IconButton(
                  icon: const Icon(Icons.timer),
                  onPressed: () async {
                    final TimeOfDay? timeOfDay = await showTimePicker(
                      context: context,
                      initialTime: startTime,
                    );
                    if (timeOfDay != null) {
                      setState(() {
                        startTime = timeOfDay;
                      });
                    }
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('End Time: ${endTime.format(context)}'),
                IconButton(
                  icon: const Icon(Icons.timer_off_rounded),
                  onPressed: () async {
                    final TimeOfDay? timeOfDay = await showTimePicker(
                      context: context,
                      initialTime: endTime,
                    );

                    if (timeOfDay != null) {
                      setState(() {
                        endTime = timeOfDay;
                      });
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
