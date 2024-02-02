import 'package:flutter/material.dart';
import 'package:flutter_untiteld/sport/daily_check_page.dart';
import 'package:flutter_untiteld/sport/exercises.dart';
import 'package:flutter_untiteld/sport/my_data.dart';
import 'package:gap/gap.dart';

class SportExercise extends StatelessWidget {
  const SportExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 237, 244),
      appBar: AppBar(
        title: const Text('Sport'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                child: Container(
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
                    child: Container(
                      margin: const EdgeInsets.only(left: 40, top: 60),
                      child: const Text('Exercises',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w800)),
                    )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Exercises(),
                      ));
                },
              ),
              const Gap(80),
              InkWell(
                child: Container(
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
                    child: Container(
                      margin: const EdgeInsets.only(left: 40, top: 60),
                      child: const Text('Daily check',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w800)),
                    )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DailyCheck(),
                      ));
                },
              ),
              const Gap(80),
              InkWell(
                child: Container(
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
                    child: Container(
                      margin: const EdgeInsets.only(left: 40, top: 60),
                      child: const Text('My data',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w800)),
                    )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyData(),
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
