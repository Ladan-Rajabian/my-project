import 'package:flutter/material.dart';
import 'package:flutter_untiteld/water/overview.dart';
import 'package:flutter_untiteld/water/settings_page.dart';
import 'package:flutter_untiteld/widgets/healthy_inkwell.dart';
import 'package:gap/gap.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WaterReminder extends StatelessWidget {
  const WaterReminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 232, 237, 244),
        appBar: AppBar(
          title: const Text('Water reminder'),
        ),
        body: Center(
          child: Column(children: [
            const Gap(120),
            InkWell(
              child: const HealthyContainer(
                text: 'Setting',
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Setting(),
                    ));
              },
            ),
            const Gap(120),
            InkWell(
              child: const HealthyContainer(
                text: 'Overview',
              ),
              onTap: () {
                navigateToOverview(context);
              },
            ),
          ]),
        ));
  }

  Future<String> getGoalLiter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var goalLiterValue = prefs.getString('selectedLiter');
    if (goalLiterValue != null) {
      return goalLiterValue;
    } else {
      return 'None';
    }
  }

  Future<void> navigateToOverview(BuildContext context) async {
    String goalLiter = await getGoalLiter();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => OverView(goalLiter: goalLiter)));
  }
}
