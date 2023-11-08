import 'package:flutter/material.dart';

class HealthySwitch extends StatefulWidget {
  const HealthySwitch({super.key});

  @override
  State<HealthySwitch> createState() => _HealthySwitchState();
}

class _HealthySwitchState extends State<HealthySwitch> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Colors.green,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
