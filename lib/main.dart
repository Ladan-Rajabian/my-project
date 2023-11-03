import 'package:flutter/material.dart';
import 'package:flutter_untiteld/login_page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: const LogInPage(),
    );
  }
}
