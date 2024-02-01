import 'package:flutter/material.dart';
import 'package:flutter_untiteld/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_untiteld/login_page/Start_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
  } catch (e) {
    print("Failed to initialize Firebase: $e");
  }
  runApp(MyApp());
}

Future<void> initSharedPreferences() async {
  await SharedPreferences.getInstance();
}

class MyApp extends StatelessWidget {
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 232, 237, 244),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(74, 85, 162, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(74, 85, 162, 1),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              minimumSize: const Size.fromHeight(50),
              textStyle: const TextStyle(color: Colors.white, fontSize: 24)),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              minimumSize: const Size.fromHeight(50),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              side: const BorderSide(
                  width: 5, color: Color.fromRGBO(74, 85, 162, 1)),
              textStyle: const TextStyle(
                fontSize: 24,
                color: Color.fromRGBO(74, 85, 162, 1),
              )),
        ),
      ),
      navigatorObservers: [FirebaseAnalyticsObserver(analytics: analytics)],
      home: StartPage(),
    );
  }
}
