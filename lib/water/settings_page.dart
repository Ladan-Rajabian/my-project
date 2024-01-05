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
            Row(
              children: [
                const Gap(10),
                const Text(
                  'Night mode',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: size.width * 0.50,
                ),
                const HealthySwitch(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
