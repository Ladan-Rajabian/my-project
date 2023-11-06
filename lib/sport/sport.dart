import 'package:flutter/material.dart';
import 'package:flutter_untiteld/sport/exercises.dart';
import 'package:gap/gap.dart';

class SportExercise extends StatelessWidget {
  const SportExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sport'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage('assets/image/sport.background.png'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.30), BlendMode.dstATop)),
        ),
        child: Center(
          child: Column(
            children: [
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
