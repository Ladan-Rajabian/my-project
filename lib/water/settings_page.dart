
import 'package:flutter/material.dart';
import 'package:flutter_untiteld/water/overview.dart';
import 'package:flutter_untiteld/widgets/healthy_dropdowm_menu.dart';
import 'package:gap/gap.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  TimeOfDay startTime = const TimeOfDay(hour: 22, minute: 0);
  TimeOfDay endTime = const TimeOfDay(hour: 9, minute: 0);
  List<String> listLiter = [
    'None',
    '1.0 L',
    '1.5 L',
    '2.0 L',
    '2.5 L',
    '3.0 L'
  ];
  List<String> listHour = <String>[
    'None',
    '1 H',
    '2 H',
    '3 H',
    '4 H',
  ];
  String selectedLiter = 'None';
  String selectedRemindTime = 'None';
  bool isReminderOn = false;

  
  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isReminderOn = prefs.getBool('isReminderOn') ?? false;
      final selectedLiterValue = prefs.get('selectedLiter');
      if (selectedLiterValue is double) {
        selectedLiter = selectedLiterValue.toString();
      } else if (selectedLiterValue is String) {
        selectedLiter = selectedLiterValue;
      } else {
        selectedLiter = 'None';
      }
      selectedRemindTime = prefs.getString('selectedReminderHour') ?? 'None';
      final startHour = prefs.getInt('startHour') ?? 22;
      final startMinute = prefs.getInt('startMinute') ?? 0;
      startTime = TimeOfDay(hour: startHour, minute: startMinute);
      final endHour = prefs.getInt('endHour') ?? 9;
      final endMinute = prefs.getInt('endMinute') ?? 0;
      endTime = TimeOfDay(hour: endHour, minute: endMinute);
    });
  }

  Future<void> _saveSettings() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isReminderOn', isReminderOn);
    prefs.setString('selectedLiter', selectedLiter);
    prefs.setString('selectedReminderHour', selectedRemindTime);
    prefs.setInt('startHour', startTime.hour);
    prefs.setInt('startMinute', startTime.minute);
    prefs.setInt('endHour', endTime.hour);
    prefs.setInt('endMinute', endTime.minute);
  }

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
                Switch(
                  value: isReminderOn,
                  onChanged: (value) {
                    setState(() {
                      isReminderOn = value;
                    });
                  },
                ),
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
                Expanded(
                  child: HealthyDropdownMenu(
                      list: listLiter,
                      selectedValue: isReminderOn ? selectedLiter : 'None',
                      onValueChanged: (value) {
                        setState(() {
                          selectedLiter = value;
                        });
                      }),
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
                Expanded(
                  child: HealthyDropdownMenu(
                      list: listHour,
                      selectedValue: isReminderOn ? selectedRemindTime : 'None',
                      onValueChanged: (value) {
                        setState(() {
                          selectedRemindTime = value;
                          if (!isReminderOn) {
                            selectedLiter = 'None';
                            selectedRemindTime = 'None';
                          }
                        });
                      }),
                )
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
                Text(
                    'Start Time: ${isReminderOn ? startTime.format(context) : 'None'}'),
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
                Text(
                    'End Time: ${isReminderOn ? endTime.format(context) : 'None'}'),
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
            const Gap(50),
            ElevatedButton(
              onPressed: () async {
                // Save to SharedPreferences
                await _saveSettings();

                // Optional: Show a confirmation message
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Your data has been saved'),
                  ),
                );
                if (context.mounted) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OverView(
                              goalLiter: selectedLiter == 'None'
                                  ? 'None'
                                  : selectedLiter)));
                }
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
