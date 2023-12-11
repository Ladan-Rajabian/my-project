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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Gap(50),
            Row(
              children: [
                Gap(10),
                Text(
                  'Reminder',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Gap(240),
                HealthySwitch(),
              ],
            ),
            Gap(40),
            Row(
              children: [
                Gap(10),
                Text(
                  'Target Liter',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Gap(147),
                HealthyDropdownMenu(
                  list: listLiter,
                )
              ],
            ),
            Gap(40),
            Row(
              children: [
                Gap(10),
                Text(
                  'Reminder every',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Gap(110),
                HealthyDropdownMenu(list: listHour)
              ],
            ),
            Gap(50),
            Row(
              children: [
                Gap(10),
                Text(
                  'Night mode',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Gap(225),
                HealthySwitch(
                   
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
