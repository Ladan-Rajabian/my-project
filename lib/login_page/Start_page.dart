import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_untiteld/widgets/bottom_nav.dart';

class StartPage extends StatelessWidget {
  StartPage({super.key});
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  Future<void> logLoginEvent() async {
    await analytics.logEvent(
      name: 'login',
      parameters: {'login_method': 'email'},
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(children: [
              SizedBox(
                height: size.height * 0.030,
              ),
              const Text(
                'Healthy Way',
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(
                height: size.height * 0.150,
              ),
              Image.asset('assets/logo/logo.png'),
              const SizedBox(
                height: 250,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavigation()));
                },
                child: const Text(
                  'Start',
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
