import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:cron/cron.dart';
import 'package:flutter/material.dart';
import 'package:flutter_untiteld/main.dart';
import 'package:flutter_untiteld/water/overview.dart';
import 'package:flutter_untiteld/water/water_reminder.dart';
import 'package:flutter_untiteld/widgets/healthy_dropdowm_menu.dart';
import 'package:gap/gap.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  late Cron _cron;

  List<String> listLiter = [
    'None',
    '1.0 L',
    '1.5 L',
    '2.0 L',
    '2.5 L',
    '3.0 L'
  ];

  String selectedLiter = 'None';

  bool isReminderOn = false;

  @override
  void initState() {
    AwesomeNotifications().setListeners(
        onActionReceivedMethod: NotificationController.onActionReceivedMethod,
        onNotificationCreatedMethod:
            NotificationController.onNotificationCreatedMethod,
        onNotificationDisplayedMethod:
            NotificationController.onNotificationDisplayedMethod,
        onDismissActionReceivedMethod:
            NotificationController.onDismissActionReceivedMethod);
    super.initState();
    _cron = Cron()
      ..schedule(Schedule.parse('0 9,11,13,15,17,19,21,23 * * *'), () {
        // This function will be executed every 2 hours between 9 AM and 11 PM
        _showNotification();
      });
    _requestNotificationPermissions();
    _loadSettings();
  }

  @override
  void dispose() {
    // Stop the cron scheduler when the widget is disposed
    _cron.close();
    super.dispose();
  }

  Future<void> _requestNotificationPermissions() async {
    await AwesomeNotifications().requestPermissionToSendNotifications();
  }

  Future<void> _showNotification() async {
    await AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (isReminderOn) {
        AwesomeNotifications().createNotification(
          content: NotificationContent(
            id: 10,
            channelKey: 'Alerts',
            actionType: ActionType.Default,
            title: 'Healthy Way',
            body: 'It\'s time to drink water',
          ),
          actionButtons: [
            NotificationActionButton(
              key: "Alerts",
              label: "Dismiss",
              actionType: ActionType.DismissAction,
            )
          ],
        );
      }

      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
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
    });
  }

  Future<void> _saveSettings() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isReminderOn', isReminderOn);
    prefs.setString('selectedLiter', selectedLiter);
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

class NotificationController {
  static Future<void> onNotificationCreatedMethod(
      ReceivedNotification receivedNotification) async {
    debugPrint("created");
  }

  static Future<void> onNotificationDisplayedMethod(
      ReceivedNotification receivedNotification) async {
    debugPrint("Displayed");
  }

  static Future<void> onDismissActionReceivedMethod(
      ReceivedAction receivedAction) async {
    debugPrint("Dismiss");
  }

  static Future<void> onActionReceivedMethod(
    ReceivedAction receivedAction,
  ) async {
    debugPrint("Test");
    navigatorKey.currentState
        ?.push(MaterialPageRoute(builder: (context) => const WaterReminder()));
  }
}
