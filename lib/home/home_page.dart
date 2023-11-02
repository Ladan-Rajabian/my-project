
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: const Color.fromRGBO(74, 85, 162, 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular((30))),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(160, 191, 244, 0.5),
                      Color.fromRGBO(197, 223, 248, 1)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                height: 153,
                width: 350,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular((30))),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(0, 158, 255, 0.75),
                      Color.fromRGBO(0, 231, 255, 0.5)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                height: 153,
                width: 350,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular((30))),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(120, 149, 203, 1),
                      Color.fromRGBO(74, 85, 162, 1)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                  ),
                ),
                height: 153,
                width: 350,
              ),
            ),
          ],
        ),
      ),
    );
  }
}