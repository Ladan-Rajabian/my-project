import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Exercises extends StatelessWidget {
  const Exercises({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercises'),
      ),
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      body: Center(
        child: Column(
          children: [
            const Gap(40),
            InkWell(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromRGBO(120, 149, 203, 1)
                              .withOpacity(0.60),
                          const Color.fromRGBO(74, 85, 162, 1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    height: 153,
                    width: 350,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        margin: const EdgeInsets.only(left: 80),
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/exercises/legs1.jpg')),
                            color: Colors.black)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 140),
                    child: const Text(
                      'Legs workout',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
